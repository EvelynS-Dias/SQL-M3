create database Resgate_Animal;

use Resgate_Animal;

create table Animal(
id INTEGER PRIMARY KEY AUTO_INCREMENT,
porte ENUM("Baixo", "Médio", "Grande", "Gigante") NOT NULL,
raça VARCHAR(150) NOT NULL,
genero ENUM("macho", "fêmea") NOT NULL,
espécie ENUM("gato", "cachorro") NOT NULL,
RGA VARCHAR(15) NOT NULL,
idade INTEGER,
status_animal ENUM('saudavel', 'em analise', 'não aprovado', 'em tratamento') NOT NULL
);

CREATE TABLE denuncia (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    telefone INTEGER NOT NULL,
    descricao TEXT NOT NULL,
    foto BLOB,
    registro_ocorrencia INTEGER
);

CREATE TABLE denuncia_animal (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_denuncia INTEGER,
    FOREIGN KEY (id_denuncia)
		REFERENCES denuncia (id),
        
	id_animal INTEGER,
	FOREIGN KEY (id_animal)
		REFERENCES denuncia (id)
);

create table padrinho(
 id INTEGER PRIMARY KEY AUTO_INCREMENT, 
 nome VARCHAR(150) NOT NULL,
 CPF CHAR(12) UNIQUE NOT NULL,
 RG CHAR(9) UNIQUE NOT NULL,
 telefone INTEGER,
 email varchar(150) UNIQUE NOT NULL
);

create table doador( 
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (150),
cpf CHAR (11) UNIQUE NOT NULL,
rg CHAR (10) UNIQUE NOT NULL
);


CREATE TABLE veterinario (
id INT PRIMARY KEY
    AUTO_INCREMENT,
nome VARCHAR(150)  NOT NULL,
crmv CHAR(15) UNIQUE NOT NULL,
cpf CHAR(12) UNIQUE NOT NULL, 
rg CHAR(9) UNIQUE NOT NULL,
telefone INT NOT NULL,
email VARCHAR(255)
);

CREATE TABLE clinica (
id INT PRIMARY KEY
    AUTO_INCREMENT,
vacina_aplicada VARCHAR(150),
tratamento VARCHAR(150) NOT NULL,
castracao BOOLEAN NOT NULL,
id_veterinario INTEGER,
FOREIGN KEY (id_veterinario)
    REFERENCES veterinario (id),
id_animal INTEGER,
FOREIGN KEY(id_animal)
    REFERENCES animal (id)
);

CREATE TABLE Abrigo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    qntd_animais INT NOT NULL,
    limite_animais INT NOT NULL
); 

CREATE TABLE Adotante (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,  
    rg VARCHAR(12) UNIQUE NOT NULL,       
    endereco_completo VARCHAR(100) NOT NULL,  
    email VARCHAR(100) UNIQUE NOT NULL,  
    telefone VARCHAR(15) NOT NULL  
);

CREATE TABLE Doacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_doador INT NOT NULL,
    id_clinica INT NOT NULL,
    valor DECIMAL(10, 2) CHECK (valor >= 0),
    tipo_doacao ENUM('dinheiro', 'alimentos', 'cobertores', 'medicamentos', 'outros') NOT NULL,
    extrato_bancario TEXT,
    FOREIGN KEY (id_doador) REFERENCES Adotante(id),
    FOREIGN KEY (id_clinica) REFERENCES Clinica(id)
);

CREATE TABLE Quarentena (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_animal INT NOT NULL,
    id_veterinario INT NOT NULL,
    id_clinica INT NOT NULL,
    data_entrada DATETIME NOT NULL,
    data_saida DATETIME,
    FOREIGN KEY (id_animal) REFERENCES Animal(id),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id),
    FOREIGN KEY (id_clinica) REFERENCES Clinica(id)
);

create table apadrinhamento(
id INT AUTO_INCREMENT PRIMARY KEY,
valor decimal(10,2) CHECK (valor >=0),
data_ DATE,
id_animal INT,
id_padrinho INT,
FOREIGN KEY (id_animal) REFERENCES animal(id),
FOREIGN KEY (id_padrinho) REFERENCES adotante(id)
);

create table adocao(
 id INTEGER PRIMARY KEY AUTO_INCREMENT,
 id_abrigo INTEGER,
 id_animal INTEGER,
 id_adotante INTEGER,
data_adoção datetime,
FOREIGN KEY (id_abrigo) REFERENCES Abrigo(id),
FOREIGN KEY (id_animal) REFERENCES animal(id),
FOREIGN KEY (id_adotante) REFERENCES adotante(id)
);



