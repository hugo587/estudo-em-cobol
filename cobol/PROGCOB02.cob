           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB02.
      *********************************
      ****** AREA DE COMENTARIOS
      *****AUTOR = HUGO VIEIRA  HUGOVIE
      *****OBJETIVO = RECEBER UMA STRING VAR
      *    DATA 27/12/2019
      ************************************
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NOME PIC X(20) VALUES SPACES.
           PROCEDURE DIVISION.
               ACCEPT WRK-NOME FROM CONSOLE.
               DISPLAY 'NOME..' WRK-NOME(1:10).
               STOP RUN.
