
__CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
LIST P=16F84A
INCLUDE <P16F84A.INC>

K_Const EQU 0x0F ;
V_Dato EQU 0x0C ;

ORG 0x00
Inicio bsf STATUS,RP0 ;
clrf TRISB ;
movlw 0xFF ;
movwf TRISA ;
bcf STATUS,RP0 ;

Main movf PORTA,W ;
addlw K_Const ;
movwf V_Dato ;
movwf PORTB ;
goto Main ;
END
