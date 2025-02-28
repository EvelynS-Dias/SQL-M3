create database Resgate_Animal;

use Resgate_Animal;

create table Animal(
id int primary key auto_increment,
porte ENUM("Baixo", "Médio", "Grande", "Gigante") not null,
raça varchar(150) not null,
genero ENUM("macho", "fêmea") not null,
espécie ENUM("gato", "cachorro") not null,
RGA varchar(15) not null,
idade int,
status_animal ENUM('saudavel', 'em analise', 'não aprovado', 'em tratamento')
);
