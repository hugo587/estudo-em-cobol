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
           01 WRK-DATA.
               02 WRK-AN0 PIC 9(04) VALUE ZEROS.
               02 WRK-MES PIC 9(02) VALUE ZEROS.
               02 WRK-DIA PIC 9(02) VALUE ZEROS.
           PROCEDURE DIVISION.
               ACCEPT WRK-DATA FROM DATE YYYYMMDD.
               DISPLAY WRK-DIA ' / ' WRK-MES ' / ' WRK-AN0.
               STOP RUN.
