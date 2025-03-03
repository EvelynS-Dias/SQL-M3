create table apadrinhamento(
id_apadrinhamento INT AUTO_INCREMENT PRIMARY KEY,
valor decimal(10,2) CHECK (valor >=0),
data_ DATE,
id_animal INT,
id_padrinho INT,
FOREIGN KEY (id_animal) REFERENCES animal(id_animal),
FOREIGN KEY (id_padrinho) REFERENCES adotante(id_adotante)
);



create table doador( 
id_adotante INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (150),
cpf CHAR (11) UNIQUE NOT NULL,
rg CHAR (10) UNIQUE NOT NULL
);
