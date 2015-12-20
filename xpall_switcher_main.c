/*XP-All switcher
 *Version 2 24/09/2015
 *              __________
 *       VDD ---|        |--- VSS
 *    Switch ---| 12F636 |--- 
 *     Reset ---|        |--- 
 *           ---|        |--- eeprom 1
 *  Blue led ---|        |--- eeprom 2
 * Green led ---|        |--- eeprom 3
 *   Red led ---|________|--- eeprom 4
 *
 *
 * Copyright © 2015 Ian Maltby
 * This work is free. You can redistribute it and/or modify it under the
 * terms of the Do What The Fuck You Want To Public License, Version 2,
 * as published by Sam Hocevar. See the COPYING file for more details.
 */

#include <xc.h>
#define _XTAL_FREQ 4000000 //clock frequency used by delay macros
#define eeprom1_out RA2
#define switch_in RA5
#define reset_out RA4
#define mode_in 1 //XPAll+
#define eeprom1 0b1110
#define eeprom2 0b1101
#define eeprom3 0b1011
#define eeprom4 0b0111
#define red 0b110
#define green 0b101
#define blue 0b011
#define yellow 0b100
#define xp100 0b0001
#define xp200 0b1110
#define xp300 0b1010
#define xp400 0b0100

// CONFIG
#pragma config FOSC = INTOSCIO  // Oscillator Selection bits (INTOSCIO oscillator: I/O function on RA4/T1G/OSC2/CLKOUT pin, I/O function on RA5/T1CKI/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = OFF      // MCLR pin function select bit (MCLR pin function is alternate function, MCLR function is internally disabled)
#pragma config CP = OFF         // Code Protection bit (Program memory is not code protected)
#pragma config CPD = OFF        // Data Code Protection bit (Data memory is not code protected)
#pragma config BOREN = OFF      // Brown-out Reset Selection bits (BOD and SBODEN disabled)
#pragma config IESO = OFF       // Internal-External Switchover bit (Internal External Switchover mode disabled)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config WURE = OFF       // Wake-Up Reset Enable bit (Standard wake-up and continue enabled)

eeprom char copyright[] = {"XPAll/XPAll+ mode selector Copyright 2015 Ian Maltby"};
eeprom char power_on_mode = 0;

void set_mode(char s_mode);

void main() {

    static char pressed = 0;
    static char mode = 0;
    static char old_mode = 0;
    static unsigned int debounce;
    static unsigned int timeout;

    CMCON0bits.CM = 7; //Turn off comparator
    TRISA = 0; //Set PORTC to output
    TRISC = 0; //Set PORTA to output
    TRISA5 = 1; //Set RA5 to input 
    PORTA = 0; //Clear PORTC set all pins to 0
    PORTC = 0; //Clear PORTA set all pins to 0

    if (power_on_mode > 3)
        mode = 0;
    else
        mode = power_on_mode;

    set_mode(mode);

    __delay_ms(100);

    for (;;) {

        while (!pressed) {
            debounce = (debounce << 1 | switch_in | 57344);
            if (debounce == 61440)
                pressed = 1;

            if (debounce == 57344)
                timeout++;
            else timeout = 0;

            if (timeout > 9000) {
                mode = old_mode;
                power_on_mode = mode;
                set_mode(mode);
                timeout = 0;

            }

            __delay_us(200);
        }

        pressed = 0;
        old_mode = mode;
        mode = (mode + 1) & 3;

        set_mode(mode);

    }
}

void set_mode(char s_mode) {

    const char eeprom_select[4] = {eeprom1, eeprom2, eeprom3, eeprom4};
    const char led_select[4] = {red, green, yellow, blue};
    const char mode_select[4] = {xp100, xp200, xp300, xp400};

    if (mode_in == 1) {
        eeprom1_out = mode_select[s_mode] & 1;
        PORTC = (mode_select[s_mode] >> 1) | (led_select[s_mode] << 3);
    } else {
        eeprom1_out = eeprom_select[s_mode] & 1;
        PORTC = (eeprom_select[s_mode] >> 1) | (led_select[s_mode] << 3);
    }

    __delay_ms(5);
    reset_out = 0;
    __delay_ms(5);
    reset_out = 1;

}


