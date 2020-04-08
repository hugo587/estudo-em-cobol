           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB03.
      *********************************
      ****** AREA DE COMENTARIOS
      *****AUTOR = HUGO VIEIRA  HUGOVIE
      *****OBJETIVO = RECEBER A DATA ATUAL DO SISTEMA ATRAVÉS
      *    DE VARIÁVEIS ESTRUTURADAS
      *    DATA 27/12/2019
      ************************************
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WRK-MESES.
              03 WRK-MES PIC X(09) OCCURS 12 TIMES.
           01 DATASYS.
               02 AN0SYS PIC 9(04) VALUE ZEROS.
               02 MESSYS PIC 9(02) VALUE ZEROS.
               02 DIASYS PIC 9(02) VALUE ZEROS.

           PROCEDURE DIVISION.
               ACCEPT DATASYS FROM DATE YYYYMMDD.
               PERFORM 0400-MONTAMES.
                DISPLAY DIASYS ' / ' WRK-MES(MESSYS) ' / ' AN0SYS.


               STOP RUN.
           0400-MONTAMES.
               MOVE 'JANEIRO '   TO WRK-MES(01).
               MOVE 'FEVEREIRO'  TO WRK-MES(02).
               MOVE 'MARCO '     TO WRK-MES(03).
               MOVE 'ABRIL '     TO WRK-MES(04).
               MOVE 'MAIO '      TO WRK-MES(05).
               MOVE 'JUNHO '     TO WRK-MES(06).
               MOVE 'JULHO '     TO WRK-MES(07).
               MOVE 'AGOSTO '    TO WRK-MES(08).
               MOVE 'SETEMBRO'   TO WRK-MES(09).
               MOVE 'OUTUBRO '   TO WRK-MES(10).
               MOVE 'NOVEMBRO '  TO WRK-MES(11).
               MOVE 'DEZEMBRO '  TO WRK-MES(12).
