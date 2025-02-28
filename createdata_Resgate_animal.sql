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
status_animal ENUM('saudavel', 'em analise', 'não aprovado', 'em tratamento')
);

CREATE TABLE denuncia (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    telefone INTEGER,
    descricao TEXT,
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

create table adocao(
 id INTEGER PRIMARY KEY AUTO_INCREMENT,
data_adoção datetime,
FOREIGN KEY (id_abrigo) REFERENCES abrigo(id),
FOREIGN KEY (id_animal) REFERENCES animal(id),
FOREIGN KEY (id_adotante) REFERENCES adotante(id)
);

CREATE TABLE Adotante (
    id_adotante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,  
    rg VARCHAR(12) NOT NULL,       
    endereco_completo VARCHAR(100) NOT NULL,  
    email VARCHAR(100) UNIQUE NOT NULL,  
    telefone VARCHAR(15) NOT NULL  
);

CREATE TABLE Doacao (
    id_doacao INT AUTO_INCREMENT PRIMARY KEY,
    id_doador INT NOT NULL,
    id_clinica INT NOT NULL,
    valor DECIMAL(10, 2) CHECK (valor >= 0),
    tipo_doacao ENUM('dinheiro', 'alimentos', 'cobertores', 'medicamentos', 'outros') NOT NULL,
    extrato_bancario TEXT,
    FOREIGN KEY (id_doador) REFERENCES Adotante(id_adotante),
    FOREIGN KEY (id_clinica) REFERENCES Clinica(id_clinica)
);
