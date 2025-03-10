create database Resgate_Animal;

use Resgate_Animal;



/* drop database resgate_animal;*/ 

create table Animal(
id_animal INTEGER PRIMARY KEY AUTO_INCREMENT, 
raça VARCHAR(150) NOT NULL,
genero ENUM("macho", "fêmea") NOT NULL,
espécie ENUM("gato", "cachorro") NOT NULL,
idade INTEGER,
status_animal ENUM('em quarentena', 'no abrigo', 'em analise', 'em tratamento', 'adotado') NOT NULL
);

CREATE TABLE denuncia (
	id_denuncia INTEGER PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR(20) NOT NULL,
    descricao TEXT NOT NULL,
    foto BLOB,
    registro_ocorrencia INTEGER
);

CREATE TABLE denuncia_animal (
	id_denuncia_animal INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_denuncia INTEGER,
    FOREIGN KEY (id_denuncia)
		REFERENCES denuncia(id_denuncia),
        
	id_animal INTEGER,
	FOREIGN KEY (id_animal)
	REFERENCES animal(id_animal),
	status enum("Em andamento", "Resolvido", "Fechado")
);

create table padrinho(
 id_padrinho INTEGER AUTO_INCREMENT PRIMARY KEY , 
 nome VARCHAR(150) NOT NULL,
cpf VARCHAR(15) UNIQUE NOT NULL, 
rg VARCHAR(12) UNIQUE NOT NULL,
 telefone VARCHAR(20),
 email varchar(150) UNIQUE NOT NULL
);

create table doador( 
id_doador INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (150),
cpf VARCHAR(15) UNIQUE NOT NULL, 
rg VARCHAR(12) UNIQUE NOT NULL,
 email varchar(150) UNIQUE NOT NULL 
);


CREATE TABLE veterinario (
id_veterinario INT PRIMARY KEY
    AUTO_INCREMENT,
nome VARCHAR(150)  NOT NULL,
crmv VARCHAR(15) UNIQUE NOT NULL,
cpf VARCHAR(15) UNIQUE NOT NULL, 
rg VARCHAR(12) UNIQUE NOT NULL,
telefone VARCHAR(20) NOT NULL, -- ALTEREI PORQUE ELE CONSIDEROU O TELEFONE UM VALOR MUITO GRANDE PARA INTEIRO
email VARCHAR(255)
);

CREATE TABLE Consulta(
id_consulta INT PRIMARY KEY
    AUTO_INCREMENT,
vacina_aplicada VARCHAR(150),
tratamento VARCHAR(150) NOT NULL,
castracao BOOLEAN NOT NULL,
descricao_caso text NOT NULL,
id_veterinario INTEGER,
FOREIGN KEY (id_veterinario)
    REFERENCES veterinario(id_veterinario),
id_animal INTEGER,
FOREIGN KEY(id_animal)
    REFERENCES animal(id_animal)
);

CREATE TABLE Adotante (
    id_adotante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(15) UNIQUE NOT NULL,  
    rg VARCHAR(12) UNIQUE NOT NULL,       
    endereco_completo VARCHAR(100) NOT NULL,  
    email VARCHAR(100) UNIQUE NOT NULL,  
    telefone VARCHAR(15) NOT NULL  
);

CREATE TABLE Doacao (
    id_doacao INT AUTO_INCREMENT PRIMARY KEY,
    id_doador INT NOT NULL,
    valor DECIMAL(10, 2) CHECK (valor >= 0),
    tipo_doacao ENUM('dinheiro', 'alimentos', 'cobertores', 'medicamentos', 'outros') NOT NULL,
    data_doação DATE,
    FOREIGN KEY (id_doador) REFERENCES doador(id_doador)
);

CREATE TABLE Quarentena (
    id_quarentena INT PRIMARY KEY AUTO_INCREMENT,
    id_animal INT NOT NULL,
    id_veterinario INT NOT NULL,
    id_consulta INT NOT NULL,
    data_entrada DATETIME NOT NULL,
    data_saida DATETIME,
    FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario),
    FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta)
);

create table apadrinhamento(
id_apadrinhamento INT AUTO_INCREMENT PRIMARY KEY,
valor decimal(10,2) CHECK (valor >=0),
data_ DATE,
id_animal INT,
id_padrinho INT,
FOREIGN KEY (id_animal) REFERENCES animal(id_animal),
FOREIGN KEY (id_padrinho) REFERENCES padrinho(id_padrinho)
);

create table adocao(
 id_adocao INTEGER PRIMARY KEY AUTO_INCREMENT,
 id_animal INTEGER,
 id_adotante INTEGER,
data_adoção datetime,
FOREIGN KEY (id_animal) REFERENCES animal(id_animal),
FOREIGN KEY (id_adotante) REFERENCES adotante(id_adotante)
);



