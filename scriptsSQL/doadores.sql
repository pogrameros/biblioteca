DROP TABLE IF EXISTS db_biblioteca.doadores;

CREATE TABLE db_biblioteca.doadores
	(
	ID            INT UNSIGNED NOT NULL auto_increment,
	Nome          CHAR (20) NOT NULL,
	SobreNome     CHAR (20) NOT NULL,
	Sexo          ENUM ('MASCULINO','FEMININO') NOT NULL,
	Cidade        INT,
	Bairro        VARCHAR (30),
	Rua           VARCHAR (30),
	Numero_Casa   SMALLINT,
	Complemento   VARCHAR (20),
	RG            VARCHAR (20),
	Data_Nascto   DATE,
	Data_Cadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
	Telefone      CHAR (14),
	Celular       CHAR (14),
	PRIMARY KEY (ID)
	);

