           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB17.
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
           01 WRK-MESES-EXTENSO.
              02 FILLER PIC X(03) VALUE 'JAN'.
              02 FILLER PIC X(03) VALUE 'FEV'.
              02 FILLER PIC X(03) VALUE 'MAR'.
              02 FILLER PIC X(03) VALUE 'ABR'.
              02 FILLER PIC X(03) VALUE 'MAI'.
              02 FILLER PIC X(03) VALUE 'JUN'.
              02 FILLER PIC X(03) VALUE 'JUL'.
              02 FILLER PIC X(03) VALUE 'AGO'.
              02 FILLER PIC X(03) VALUE 'SET'.
              02 FILLER PIC X(03) VALUE 'OUT'.
              02 FILLER PIC X(03) VALUE 'NOV'.
              02 FILLER PIC X(03) VALUE 'DEZ'.

           01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
              02 WRK-MES PIC X(03) OCCURS 12 TIMES.

           01 DATASYS.
               02 AN0SYS PIC 9(04) VALUE ZEROS.
               02 MESSYS PIC 9(02) VALUE ZEROS.
               02 DIASYS PIC 9(02) VALUE ZEROS.

           PROCEDURE DIVISION.
               ACCEPT DATASYS FROM DATE YYYYMMDD.

                DISPLAY DIASYS ' / ' WRK-MES(MESSYS) ' / ' AN0SYS.


               STOP RUN.
