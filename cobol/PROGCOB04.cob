           IDENTIFICATION DIVISION.
           PROGRAM-ID. PROGCOB04.
      *********************************
      ****** AREA DE COMENTARIOS
      *****AUTOR = HUGO VIEIRA  HUGOVIE
      *****OBJETIVO = RECEBER NOME, SALARIO E USAR MASCARA
      *    DE VIRGULA E DE CASA DECIMAL
      *    DATA 31/12/2019
      ************************************
           ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 WRK-NOME PIC X(20) VALUE SPACES.
           77 WRK-SALARIO PIC 9(06)V99 VALUE ZEROS.
           77 WRK-SALARIOED  PIC $ZZZ.ZZ9,99 VALUE ZEROS.
           PROCEDURE DIVISION.
               ACCEPT WRK-NOME FROM CONSOLE.
               ACCEPT WRK-SALARIO FROM CONSOLE.
      *************** MOSTRA DADOS *************
               DISPLAY 'NOME ' WRK-NOME.
               MOVE WRK-SALARIO TO WRK-SALARIOED.
               DISPLAY 'SALARIO ' WRK-SALARIOED.
               STOP RUN.
