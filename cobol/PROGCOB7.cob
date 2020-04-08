           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB07.
      *********************************
      ****** AREA DE COMENTARIOS
      *****AUTOR = HUGO VIEIRA  HUGOVIE
      *****OBJETIVO = USO DO IF E ELSE
      *    DATA 08/01/2020
      ************************************
           ENVIRONMENT DIVISION.
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

                IF WRK-MEDIA >= 6
                    DISPLAY 'APROVADO'
                ELSE
                    IF WRK-MEDIA >= 2
                        DISPLAY 'RECUPERACAO'
                        ELSE
                            DISPLAY 'REPROVADO'
                            END-IF
                END-IF.


                   STOP RUN.
