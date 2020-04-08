           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB11.
      *********************************
      ****** AREA DE COMENTARIOS
      *****AUTOR = HUGO VIEIRA  HUGOVIE
      *****OBJETIVO = USO DO OPERADOR AND E OR
      *    DATA 08/01/2020
      ************************************
           ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-LARGURA      PIC 9(03)V99   VALUE ZEROS.
           77 WRK-COMPRIMENTO  PIC 9(03)V99   VALUE ZEROS.
           77 WRK-AREA         PIC 9(03)V99   VALUE ZEROS.


           PROCEDURE DIVISION.
              DISPLAY 'LARGURA...'
              ACCEPT WRK-LARGURA.

              DISPLAY 'COMPRIMENTO..'
              ACCEPT WRK-COMPRIMENTO.

              IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
                  COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
                  DISPLAY '---------------------------'
                  DISPLAY 'AREA.....' WRK-AREA
              ELSE
                 DISPLAY 'FALTA INFORMAR VALORES'
              END-IF.
                   STOP RUN.
