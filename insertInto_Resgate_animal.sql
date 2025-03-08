
use resgate_animal;

INSERT INTO denuncia (telefone, descricao, foto, registro_ocorrencia) VALUES (11995670984, 'Cachorro foi encontrada em uma estrada por um motorista, com um ferimento na pata após um atropelamento', NULL, 1),
(11949489324, 'Filhote da raça São Bernardo foi encontrado, porém está saúdavel', NULL, 2),
(11394705478, 'Gato de rua encontrado com infecção na pele, sem ferimentos graves', NULL, 3),
(11763467244, 'Cachorro resgatado e ira ser encaminhado para um check-up', NULL, 4),
(11253258923, 'Gato encontrado em uma rodovia por ciclistas', NULL, 5),
(11636325453, 'Cachorro foi encontrada em uma praia por banhistas', NULL, 6),
(11457436344, 'Gato adulto encontrado por pedestres na rua, sem sinais aparentes de ferimentos e parece saudavel', NULL, 7),
(11475328573, 'Cachorro foi encontrado em uma casa abandonada com sinais de anemia', NULL, 7),
(11753643646, 'Gato encontrado com infestação de pulgas em um terreno baldio', NULL, 8),
(11363469404, 'Cachorro encontrado com sintomas de cancêr', NULL, 9),
(11359382523, 'Cachorro achado com dificuldade para se mover', NULL, 10),
(11385328538, 'Gato com leves ferimentos, após uma briga com outro gato de rua', NULL, 11),
(11863289593, 'Gato foi encontrado na rua com os olhos inchados', NULL, 12),
(11573478332, 'Cachorro idoso foi encontrado na rua, ofegante por conta do calor', NULL, 13),
(11574573239, 'Gato encontrado com manchas na pele e perda de pelos', NULL, 14);


INSERT INTO Animal (raça, genero, espécie, idade, status_animal) VALUES
('Border Collie', 'macho', 'cachorro', 3, 'adotado'),
('Beagle', 'fêmea', 'cachorro', 5, 'adotado'),
('Rottweiler', 'macho', 'cachorro', 4, 'adotado'),
('Siberian Husky', 'macho', 'cachorro', 2, 'adotado'),
('Scottish Fold', 'fêmea', 'gato', 3, 'adotado'),
('Labrador', 'macho', 'cachorro', 3, 'no abrigo'),
('Poodle', 'fêmea', 'cachorro', 5, 'em tratamento'),
('Pastor Alemão', 'macho', 'cachorro', 4, 'no abrigo'),
('SRD', 'fêmea', 'cachorro', 2, 'em analise'),
('São Bernardo', 'macho', 'cachorro', 6, 'em quarentena'),
('Schnauzer', 'macho', 'cachorro', 3, 'no abrigo'),
('Buldogue Francês', 'fêmea', 'cachorro', 2, 'adotado'),
('Golden Retriever', 'macho', 'cachorro', 5, 'no abrigo'),
('Shih Tzu', 'fêmea', 'cachorro', 4, 'em tratamento'),
('SRD', 'macho', 'cachorro', 7, 'em quarentena'),
('Persa', 'fêmea', 'gato', 3, 'no abrigo'),
('Siamês', 'macho', 'gato', 4, 'em tratamento'),
('Maine Coon', 'fêmea', 'gato', 5, 'adotado');

INSERT INTO denuncia_animal (id_denuncia, id_animal, status) VALUES
(1, 1, 'Resolvido'),
(1, 2, 'Resolvido'),
(1, 3, 'Resolvido'),
(1, 4, 'Resolvido'),
(1, 5, 'Resolvido'),
(1, 6, 'Em andamento'),
(2, 7, 'Em andamento'),
(2, 8, 'Em andamento'),
(2, 9, 'Em andamento'),
(2, 10, 'Em andamento'),
(2, 11, 'Em andamento'),
(2, 12, 'Resolvido'),
(3, 13, 'Em andamento'),
(3, 14, 'Em andamento'),
(3, 15, 'Em andamento'),
(3, 16, 'Em andamento'),
(3, 17, 'Em andamento'),
(3, 18, 'Resolvido');


INSERT INTO veterinario (nome, CRMV, cpf, RG, telefone, email) VALUES
('Dr. João Silva', 'SP123456', '123.456.789-01', '12.345.678-9', 11987654321, 'joao.silva@gmail.com'),
('Dra. Maria Oliveira', 'SP654321', '987.654.321-09', '98.765.432-1', 11987654321, 'maria.oliveira@email.com'),
('Dr. Carlos Mendes', 'SP789456', '456.789.123-45', '45.678.912-3', 11987654321, 'carlos.mendes@gmail.com'),
('Dra. Ana Júlia', 'SP147258', '369.852.147-36', '36.985.214-7', 11987654321, 'ana.julia@gmail.com'),
('Dr. Felipe Rocha', 'SP963852', '258.741.369-25', '25.874.136-9', 11987654321, 'felipe.rocha@outlook.com'),
('Dr. Ricardo Alves', 'SP852963', '159.357.852-96', '15.935.785-2', 11987654321, 'ricardo.alves@gmail.com');


-- 15 REGISTROS 
INSERT INTO consulta (id_veterinario, id_animal, vacina_aplicada, tratamento, castracao, descricao_caso) VALUES
(1, 1, 'Vacina Raiva', 'Antibiótico', TRUE, 'Cachorro chegou com ferimento na pata'),
(2, 2, 'Vacina V10', 'Vermífugo e vacinação V10', FALSE, 'Filhote saudável, apenas vermifugação'),
(3, 3, 'Vacina Antirrábica', 'Tratamento de pele e Vacinação antirrábica', FALSE, 'Gato com dermatite leve'),
(4, 4, NULL, 'Cirurgia de esterilização', TRUE, 'Cachorro castrado e em recuperação'),
(5, 5, 'Vacina Felina', 'Observação clínica e aplicação de Vacinação Felina', FALSE, 'Gato resgatado, avaliação inicial realizada'),
(6, 6, NULL, 'Hidratação e antibiótico', TRUE, 'Cachorro resgatado com sinais de desidratação e infecção de pele'),
(2, 7, 'Vacina Antirrábica', 'Check-up geral', FALSE, 'Gato adulto em boas condições, apenas vacinação realizada'),
(1, 8, NULL, 'Exame de sangue', TRUE, 'Cachorro resgatado com sinais de anemia'),
(3, 9, NULL, 'Tratamento antipulgas', FALSE, 'Gato com infestação de pulgas, em tratamento'),
(5, 10, NULL, 'Cirurgia de remoção de tumor', TRUE, 'Cachorro passou por cirurgia para remoção de tumor benigno'),
(4, 11, NULL, 'Fisioterapia', FALSE, 'Cachorro com problema locomotor, encaminhado para fisioterapia'),
(6, 12, 'Vacina Antirrábica', 'Vacinação e tratamento de feridas', TRUE, 'Gato com leves ferimentos'),
(2, 13, NULL, 'Tratamento ocular', FALSE, 'Gato com infecção ocular leve, em acompanhamento'),
(1, 14, NULL, 'Exame cardíaco', TRUE, 'Cachorro idoso, monitoramento cardíaco necessário'),
(3, 15, NULL, 'Tratamento de micose', FALSE, 'Gato com sinais de micose, iniciou tratamento'),
(1, 16, 'Vacina V10', 'Vacinação', TRUE, 'Aplicação de vacina');

-- A vacina V8 é um imunizante para cachorros que previne contra 8 doenças diferentes
-- Vacina antirrábica é uma vacina inativada que previne a raiva, uma doença viral que pode ser transmitida por animais infectados. 
-- Vacina Polivalente é uma vacina que protege contra várias doenças infecciosas, podendo ser aplicada em animais ou em humanos

INSERT INTO padrinho (nome, cpf, rg, telefone, email) VALUES
('Carlos Alberto Santos', '123.456.789-00', '45.123.456-7', '11987654321', 'carlos.alberto@gmail.com'),
('Fernanda Silva Oliveira', '234.567.890-12', '34.234.567-8', '21998765432', 'fernanda.silva@outlook.com'),
('Juliano Santos Martins', '345.678.901-23', '34.345.678-9', '31912345678', 'juliano.santos@gmail.com'),
('Patrícia Costa Nogueira', '456.789.012-34', '30.456.789-0', '41923456789', 'patricia.costa@gmail.com'),
('Ricardo Rocha Sousa', '567.890.123-45', '34.567.890-1', '51934567890', 'ricardo.rocha@yahoo.com'),
('Isabela Pereira Santana', '678.901.234-56', '56.678.901-2', '61945678901', 'isabela.pereira@gmail.com');

INSERT INTO doador (nome, cpf, rg, email) VALUES
('Lucas Silva Almeida', '345.853.235-87', '56.123.456-5', 'lucas.almeida@gmail.com'),
('Juliana Pereira Santos', '238.568.234-13', '34.123.456-3', 'juliana.santos@gmail.com'),
('Rafael Costa Martins', '876.341.984-12', '78.334.455-5', 'rafael.martins@yahoo.com'),
('Carla Souza Oliveira', '687.243.789-24', '67.445.567-6', 'carla.oliveira@gmail.com'),
('Felipe Rodrigues Lima', '576.347.863-12', '89.415.568-8', 'felipe.lima@gmail.com'),
('Renata Gomes da Silva', '587.237.347-23', '40.667.889-9', 'renata.silva@outlook.com'),
('Gabriel Mendes Rocha', '975.354.686-12', '11.223.344-4', 'gabriel.rocha@gmail.com'),
('Fernanda Alves Nunes', '679.678.349-19', '22.334.455-5', 'fernanda.nunes@gmail.com'),
('Thiago Ferreira Lopes', '985.265.698-25', '33.445.566-6', 'thiago.lopes@gmail.com'),
('Mariana Duarte Cardoso', '990.011.223-89', '44.556.677-7', 'mariana.cardoso@gmail.com'),
('Bruno Henrique Sales', '111.222.334-01', '55.667.788-8', 'bruno.sales@outlook.com'),
('Camila Barbosa Tavares', '222.333.445-23', '66.778.899-9', 'camila.tavares@gmail.com'),
('Eduardo Santana Moreira', '333.444.556-45', '77.889.900-0', 'eduardo.moreira@gmail.com');


#13 registros
INSERT INTO Adotante (nome, cpf, rg, endereco_completo, email, telefone) VALUES
('Ana Clara Souza', '123.456.789-01', '12.345.678-9', 'Rua das Flores, 123 - São Paulo, SP', 'ana.souza@email.com', '11987654321'),
('Bruno Oliveira', '234.567.890-12', '23.456.789-0', 'Avenida Paulista, 456 - São Paulo, SP', 'bruno.oliveira@email.com', '11987654322'),
('Carla Mendes', '345.678.901-23', '34.567.890-1', 'Rua dos Pinheiros, 789 - São Paulo, SP', 'carla.mendes@email.com', '11987654323'),
('Daniel Costa', '456.789.012-34', '45.678.901-2', 'Alameda Santos, 1011 - São Paulo, SP', 'daniel.costa@email.com', '11987654324'),
('Eduarda Rocha', '567.890.123-45', '56.789.012-3', 'Rua Augusta, 1213 - São Paulo, SP', 'eduarda.rocha@email.com', '11987654325'),
('Felipe Alves', '678.901.234-56', '67.890.123-4', 'Rua Oscar Freire, 1415 - São Paulo, SP', 'felipe.alves@email.com', '11987654326'),
('Gabriela Lima', '789.012.345-67', '78.901.234-5', 'Rua Haddock Lobo, 1617 - São Paulo, SP', 'gabriela.lima@email.com', '11987654327'),
('Henrique Silva', '890.123.456-78', '89.012.345-6', 'Rua da Consolação, 1819 - São Paulo, SP', 'henrique.silva@email.com', '11987654328'),
('Isabela Santos', '901.234.567-89', '90.123.456-7', 'Rua Frei Caneca, 2021 - São Paulo, SP', 'isabela.santos@email.com', '11987654329'),
('João Pereira', '012.345.678-90', '01.234.567-8', 'Rua Bela Cintra, 2223 - São Paulo, SP', 'joao.pereira@email.com', '11987654330'),
('Lucas Ferreira', '123.456.789-12', '12.345.678-1', 'Rua Rio de Janeiro, 321 - São Paulo, SP', 'lucas.ferreira@email.com', '11987654331'),
('Mariana Silva', '234.567.890-23', '23.456.789-2', 'Avenida Brasil, 789 - São Paulo, SP', 'mariana.silva@email.com', '11987654332'),
('Rafael Costa', '345.678.901-34', '34.567.890-3', 'Rua dos Três Irmãos, 654 - São Paulo, SP', 'rafael.costa@email.com', '11987654333');

#10 registros
INSERT INTO apadrinhamento (valor, data_, id_animal, id_padrinho) VALUES
(200.00, '2025-07-15', 6, 1),
(100.00, '2025-08-20', 8, 2),
(250.00, '2025-09-10', 11, 3),
(175.50, '2025-10-05', 14, 4),
(300.00, '2025-11-12', 17, 5),
(75.25, '2025-12-01', 16, 6);

# 13 Registros
INSERT INTO adocao (id_animal, id_adotante, data_adoção) VALUES
(1, 1, '2024-05-19 12:40:00'),
(2, 2, '2024-06-22 18:45:00'),
(3, 3, '2024-07-11 11:55:00'),
(4, 4, '2024-08-17 16:55:00'),
(5, 5, '2024-09-15 14:30:00'),
(11, 6, '2024-10-05 16:10:00'),
(17, 7, '2024-12-00 09:30:00');

-- Inserindo dados na tabela Doação
-- Inserção de 10 registros
INSERT INTO Doacao (id_doador, valor, tipo_doacao, data_doação) VALUES
(1, 0.00, 'outros', '2024-08-30'),
(2, 100.00, 'cobertores', '2024-09-05'),
(3, 50.00, 'medicamentos', '2024-10-10'),
(4, 0.00, 'alimentos', '2024-11-15'),
(5, 200.00, 'dinheiro', '2024-12-20'),
(6, 500.00, 'dinheiro', '2025-03-04'),
(5, 0.00, 'medicamentos', '2025-03-26'),
(7, 0.00, 'outros', '2025-03-01'),
(8, 0.00, 'alimentos', '2025-03-05'),
(9, 100.00, 'dinheiro', '2025-03-08'),
(10, 50.00, 'dinheiro', '2025-03-11'),
(6, 200.00, 'dinheiro', '2025-03-04'),
(11, 0.00, 'alimentos', '2025-03-16'),
(12, 250.00, 'dinheiro', '2025-03-21'),
(10, 0.00, 'medicamentos', '2025-03-29'),
(13, 0.00, 'cobertores', '2025-03-24'),
(11, 0.00, 'alimentos', '2025-03-16'),
(5, 0.00, 'medicamentos', '2025-03-26');

INSERT INTO Quarentena (id_animal, id_veterinario, id_consulta, data_entrada, data_saida) VALUES  
(16, 6, 6, '2025-02-28 12:00', '2025-02-28 15:21'),  
(9, 2, 7, '2025-02-10 15:45', '2025-02-10 18:45');


