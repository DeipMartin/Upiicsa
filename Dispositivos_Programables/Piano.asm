;PIANO MUSICAL 8 NOTAS PIC16F84A
;
;**************************************************
            __CONFIG    _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

            LIST    P=16F84A
            INCLUDE<P16F84A.INC>
            ERRORLEVEL  -302

          CBLOCK  0x0C
           ENDC

        #DEFINE     Salida PORTA,0
        #DEFINE     Do  PORTB,0
        #DEFINE     Re  PORTB,1
        #DEFINE     Mi  PORTB,2
        #DEFINE     Fa  PORTB,3
        #DEFINE     Sol PORTB,4
        #DEFINE     La  PORTB,5
        #DEFINE     Si  PORTB,6
        #DEFINE     DO  PORTB,7
;****************************************************
               ORG 0
Inicio  bsf     STATUS, RP0     ;acceso al banco 1
        clrf    TRISA           ;Puerto A declarado como salida
        movlw   0xFF
        movwf   TRISB           ;puerto B como entrada
        bcf     STATUS,RP0      ; ACCESO AL BANCO 0
;******************************************************************
Main
    bcf     Salida
    btfsc   Do               
    goto    Estado_Re           
    call    Retardo          
    btfsc   Do              
    goto    fin             
Do_Arriba
    call    Tono_Do
    btfss   Do              
    goto    Do_Arriba
    goto    fin
Estado_Re
    btfsc   Re
    goto    Estado_Mi
    call    Retardo         
    btfsc   Re               
    goto    fin            
Re_Arriba
   call    Tono_Re
    btfss   Re             
    goto    Re_Arriba
    goto    fin
Estado_Mi
    btfsc   Mi
    goto    Estado_Fa
    call    Retardo         
    btfsc   Mi           
    goto    fin              
Mi_Arriba
   call    Tono_Mi
    btfss   Mi          
    goto    Mi_Arriba
    goto    fin
Estado_Fa
    btfsc   Fa
    goto    Estado_Sol
    call    Retardo          
    btfsc   Fa           
    goto    fin              
Fa_Arriba
    call    Tono_Fa
    btfss   Fa           
    goto    Fa_Arriba
    goto    fin
Estado_Sol
    btfsc   Sol
    goto    Estado_La
    call    Retardo         
    btfsc   Sol           
    goto    fin              
Sol_Arriba
    call    Tono_Sol
    btfss   Sol           
    goto    Sol_Arriba
    goto    fin
Estado_La
    btfsc   La
    goto    Estado_Si
    call    Retardo          
    btfsc   La            
    goto    fin              
La_Arriba
    call    Tono_La
    btfss   La            
    goto    La_Arriba
    goto    fin
Estado_DO
    btfsc   DO
    goto    Main
    call    Retardo          
    btfsc   DO            
    goto    fin              
Do_Arriba
    call    Tono_Do
    btfss   DO            
    goto    Do_Arriba
    goto    fin
Estado_Si
    btfsc   Si
    goto    Estado_DO
    call    Retardo          
    btfsc   Si            
    goto    fin              
Si_Arriba
    call    Tono_Si
    btfss   Si           
    goto    Si_Arriba
fin
    goto    Sin_sonido
    goto    Main
;**********************************



Sin_sonido
        bsf    Salida
        goto    Main
Tono_Do
        bsf     Salida
        call    RetarDo
        bcf     Salida
        call    RetarDo
        return
Tono_Re
        bsf     Salida
        call    RetarRe
        bcf     Salida
        call    RetarRe
        return
Tono_Mi
        bsf     Salida
        call    RetarMi
        bcf     Salida
        Call    RetarMi
        return
Tono_Fa
        bsf     Salida
        call    RetarFa
        bcf     Salida
        Call    RetarFa
        return
Tono_Sol
        bsf     Salida
        call    RetarSol
        bcf     Salida
        Call    RetarSol
        return
Tono_La
        bsf     Salida
        Call    RetarLa
        bcf     Salida
        call    RetarLa
        return
Tono_Si
        bsf     Salida
        call    RetarSi
        bcf     Salida
        call    RetarSi
        return
Tono_DO
        bsf     Salida
        call    RetarDO
        bcf     Salida
        call    RetarDO
        return
;***************************************
;Incluir las librerias     
        INCLUDE<tonos.inc>
        END
