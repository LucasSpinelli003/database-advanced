SET SERVEROUTPUT ON;

//EX1: AUMETAR O SALÁRIO

declare

    SALARIO NUMBER := 1400;
    
    NOVO_SALARIO SALARIO%type;
    
begin

    NOVO_SALARIO := SALARIO*1.25;   
    
    dbms_output.put_line('O novo salário minimo é R$'|| NOVO_SALARIO);

    
END;

//EX2: CONVERÇÃO DE DOLLAR PARA REAL

declare

    DOLLAR NUMBER := 45;
    
    REAL DOLLAR%type;
    
begin

    REAL := DOLLAR*5;   
    
    dbms_output.put_line('O valor em R$'|| REAL);

    
END;


//EX3:

declare

    COMPRA NUMBER := &VALOR;
    VALOR_COM_JUROS  COMPRA%type;
    VALOR_PARCELA  VALOR_COM_JUROS%type;
    

begin

    VALOR_COM_JUROS := COMPRA + (COMPRA*0.3);
    VALOR_PARCELA := VALOR_COM_JUROS/10;

    dbms_output.put_line('O valor de cada parcela é R$'|| VALOR_PARCELA);
    
END;

//EX4:

declare

    VALOR_CARRO NUMBER := &VALOR;
    NUMERO_PARCELAS NUMBER := &VALOR;
    
    VALOR_ENTRADA VALOR_CARRO%type;
    VALOR_RESTANTE VALOR_ENTRADA%type;
    VALOR_COM_JUROS_6 VALOR_ENTRADA%type;
    VALOR_COM_JUROS_12 VALOR_COM_JUROS_6%type;
    VALOR_COM_JUROS_18 VALOR_COM_JUROS_12%type;
    

begin

    VALOR_ENTRADA := VALOR_CARRO*0.2;
    VALOR_RESTANTE := VALOR_CARRO*0.8;
    
    VALOR_COM_JUROS_6 := VALOR_RESTANTE +(VALOR_RESTANTE*0.1);
    VALOR_COM_JUROS_12 := VALOR_RESTANTE +(VALOR_RESTANTE*0.15);
    VALOR_COM_JUROS_18 := VALOR_RESTANTE +(VALOR_RESTANTE*0.2);
   
    
    
    dbms_output.put_line('O valor da parcela em 6 vezes é R$'|| VALOR_COM_JUROS_6);
     dbms_output.put_line('O valor da parcela em 12 vezes é R$'|| VALOR_COM_JUROS_12);
      dbms_output.put_line('O valor da parcela em 18 vezes é R$'|| VALOR_COM_JUROS_18);
    
END;