           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB02.
      *********************************
      ****** AREA DE COMENTARIOS
      *****AUTOR = HUGO VIEIRA  HUGOVIE
      *****OBJETIVO = OPERADORES ARITMETICOS
      *    DATA 08/01/2020
      ************************************
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NUM1 PIC 9(02) VALUE ZEROS.
           77 WRK-NUM2 PIC 9(02) VALUE ZEROS.
           77 WRK-RESUL PIC 9(04) VALUE ZEROS.
           77 WRK-RESTO PIC 9(02) VALUE ZEROS.

           PROCEDURE DIVISION.
               ACCEPT WRK-NUM1 FROM CONSOLE.
               ACCEPT WRK-NUM2 FROM CONSOLE.
               DISPLAY 'NUM1...' WRK-NUM1.
               DISPLAY 'NUM2...' WRK-NUM2.
      *    ************* SOMA
               ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
               DISPLAY 'SOMA....' WRK-RESUL.
      *    *************** SUBTRACAO
               SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
               DISPLAY 'SUBTRACAO.....' WRK-RESUL.
      *    *************** DIVISAO
               DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
               REMAINDER WRK-RESTO.
               DISPLAY 'DIVISAO.....' WRK-RESUL.
               DISPLAY 'RESTO.....' WRK-RESTO.
      *    *************** MULTIPLICAÇÃO
               MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
               DISPLAY 'MULTIPLICACAO.....' WRK-RESUL.
      *    ***************** MEDIA
           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA.....' WRK-RESUL.

                   STOP RUN.
