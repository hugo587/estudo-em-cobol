           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB08.
      *********************************
      ****** AREA DE COMENTARIOS
      *****AUTOR = HUGO VIEIRA  HUGOVIE
      *****OBJETIVO = USO DO EVALUATE
      *    DATA 08/01/2020
      ************************************
           ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NUM1 PIC 9(02)     VALUE ZEROS.
           77 WRK-NUM2 PIC 9(02)     VALUE ZEROS.
           77 WRK-MEDIA PIC 9(02)V9  VALUE ZEROS.


           PROCEDURE DIVISION.
               ACCEPT WRK-NUM1.
               ACCEPT WRK-NUM2.
               COMPUTE WRK-MEDIA = (WRK-NUM1+WRK-NUM2)/2.
               DISPLAY 'MEDIA...' WRK-MEDIA.

                EVALUATE WRK-MEDIA
                 WHEN 10
                    DISPLAY 'APROVADO-BONUS'
                 WHEN 6 THRU 9,9
                    DISPLAY 'APROVADO'
                 WHEN 2 THRU 5,9
                    DISPLAY 'RECUPARACAO'
                 WHEN OTHER
                    DISPLAY 'REPROVADO'
                END-EVALUATE.

                   STOP RUN.
