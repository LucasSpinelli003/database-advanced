CREATE TABLE Pais(
    id_pais     NUMBER Generated Always As Identity,
    nome        VARCHAR2(30),
    Primary key(id_pais)
);

CREATE TABLE Estado (
    id_estado     NUMBER Generated Always As Identity,
    nome        VARCHAR2(30),
    id_pais    NUMBER,
    Primary key(id_estado)
);
Alter Table Estado ADD Constraint fk_estado Foreign Key (id_pais )References Pais;


CREATE TABLE Cidade (
    id_cidade    NUMBER Generated Always As Identity,
    nome         VARCHAR2(30),
    id_estado    NUMBER,
    Primary key(id_cidade)
);
Alter Table Cidade ADD Constraint fk_cidade Foreign Key (id_estado) References Estado;


CREATE TABLE Bairro (
    id_bairro    NUMBER Generated Always As Identity,
    nome         VARCHAR2(30),
    id_cidade    NUMBER,
    Primary key(id_bairro)
);
Alter Table Bairro ADD Constraint fk_bairro Foreign Key (id_cidade) References Cidade;

CREATE TABLE Endereco (
    id_endereco    NUMBER Generated Always As Identity,
    nome         VARCHAR2(30),
    id_bairro    NUMBER,
    Primary key(id_endereco)
);
Alter Table Endereco ADD Constraint fk_endereco Foreign Key (id_bairro) References Bairro;


CREATE TABLE Cliente (
    id_cliente    NUMBER Generated Always As Identity,
    nome          VARCHAR2(30),
    id_endereco   NUMBER,
    Primary key(id_cliente)
);
Alter Table Cliente ADD Constraint fk_cliente Foreign Key (id_cliente) References Cliente;



