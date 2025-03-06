use resgate_animal;

-- Aqui tem 25 registros. 
INSERT INTO animal (porte, raca, genero, especie, RGA, idade, status_animal) VALUES
('Médio', 'Labrador', 'macho', 'cachorro', NULL, 3, 'saudavel'),
('Baixo', 'Poodle', 'fêmea', 'cachorro', NULL, 5, 'em tratamento'),
('Grande', 'Pastor Alemão', 'macho', 'cachorro', NULL, 4, 'saudavel'),
('Médio', 'SRD', 'fêmea', 'cachorro', NULL, 2, 'em analise'),
('Gigante', 'São Bernardo', 'macho', 'cachorro', NULL, 6, 'não aprovado'),
('Médio', 'Schnauzer', 'macho', 'cachorro', NULL, 3, 'saudavel'),
('Baixo', 'Buldogue Francês', 'fêmea', 'cachorro', NULL, 2, 'em analise'),
('Grande', 'Golden Retriever', 'macho', 'cachorro', NULL, 5, 'saudavel'),
('Baixo', 'Shih Tzu', 'fêmea', 'cachorro', NULL, 4, 'em tratamento'),
('Gigante', 'SRD', 'macho', 'cachorro', NULL, 7, 'não aprovado'),
('Baixo', 'Persa', 'fêmea', 'gato', NULL, 3, 'saudavel'),
('Médio', 'Siamês', 'macho', 'gato', NULL, 4, 'em tratamento'),
('Médio', 'Maine Coon', 'fêmea', 'gato', NULL, 5, 'saudavel'),
('Baixo', 'SRD', 'macho', 'gato', NULL, 2, 'em analise'),
('Baixo', 'Bengal', 'fêmea', 'gato', NULL, 3, 'não aprovado'),
('Médio', 'Angorá', 'macho', 'gato', NULL, 4, 'saudavel'),
('Baixo', 'Himalaio', 'fêmea', 'gato', NULL, 2, 'em tratamento'),
('Médio', 'Ragdoll', 'macho', 'gato', NULL, 3, 'saudavel'),
('Baixo', 'Sphynx', 'fêmea', 'gato', NULL, 5, 'em analise'),
('Médio', 'Chartreux', 'macho', 'gato', NULL, 4, 'não aprovado'),
('Grande', 'Akita', 'macho', 'cachorro', NULL, 6, 'saudavel'),
('Médio', 'Dachshund', 'fêmea', 'cachorro', NULL, 4, 'em tratamento'),
('Baixo', 'Yorkshire', 'macho', 'cachorro', NULL, 3, 'saudavel'),
('Gigante', 'Mastiff', 'fêmea', 'cachorro', NULL, 7, 'não aprovado'),
('Médio', 'Border Collie', 'macho', 'cachorro', NULL, 5, 'em analise');

-- 6 REGISTROS 
INSERT INTO veterinario (nome, CRMV, cpf, RG, telefone, email) VALUES
('Dr. João Silva', 'SP123456', '12345678901', '1234567894', 11987654321, 'joao.silva@gmail.com'),
('Dra. Maria Oliveira', 'SP654321', '98765432109', '9876543219', 11987654321, 'maria.oliveira@email.com'),
('Dr. Carlos Mendes', 'SP789456', '45678912345', '456789123', 11987654321, 'carlos.mendes@gmail.com'),
('Dra. Ana Júlia', 'SP147258', '36985214736', '3698521479', 11987654321, 'ana.julia@gmail.com'),
('Dr. Felipe Rocha', 'SP963852', '25874136925', '2587413692', 11987654321, 'felipe.rocha@outlook.com'),
('Dr. Ricardo Alves', 'SP852963', '15935785296', '159357852', 11987654321, 'ricardo.alves@gmail.com');

-- 15 REGISTROS 
INSERT INTO clinica (id_veterinario, id_animal, vacina_aplicada, tratamento, castracao, descricao_caso) VALUES
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
<<<<<<< HEAD
=======

>>>>>>> 0d61975269df871b7e872b3d2b61f7fcd694e1e6

INSERT INTO padrinho (nome, cpf, rg, telefone, email) VALUES

('Carlos alberto santos', '12345678900', '451234567', '11987654321', 'carlos.alberto@email.com'),
('Fernanda silva oliveira', '23456789012', '342345678', '21998765432', 'fernanda.silva@email.com'),
('Juliano santos martins', '34567890123', '343456789', '31912345678', 'juliano.santos@email.com'),
('Patrícia costa nogueira', '45678901234', '304567890', '41923456789', 'patricia.costa@email.com'),
('Ricardo rocha sousa', '56789012345', '345678901', '51934567890', 'ricardo.rocha@email.com'),
('Isabela pereira santana', '67890123456', '566789012', '61945678901', 'isabela.pereira@email.com');
    
INSERT INTO doador (nome, cpf, rg, email) VALUES
('Lucas silva almeida', '12345678900', '56123456','lucas.almeida@email.com'),
('Juliana pereira santos', '98765432100', '34123456','juliana.santos@email.com'),
('Rafael costa martins', '22334455677','78334455', 'rafael.martins@email.com'),
('Carla souza oliveira',  '33445566788', '67445567','carla.oliveira@email.com'),
('Felipe rodrigues lima', '44556677899', '89415568', 'felipe.lima@email.com'),
('Renata gomes da silva', '55667788900', '40667889', 'renata.silva@email.com');

<<<<<<< HEAD
=======
#10 registros
INSERT INTO Adotante (nome, cpf, rg, endereco_completo, email, telefone) VALUES
('Ana Clara Souza', '12345678901', '123456789012', 'Rua das Flores, 123 - São Paulo, SP', 'ana.souza@email.com', '11987654321'),
('Bruno Oliveira', '23456789012', '234567890123', 'Avenida Paulista, 456 - São Paulo, SP', 'bruno.oliveira@email.com', '11987654322'),
('Carla Mendes', '34567890123', '345678901234', 'Rua dos Pinheiros, 789 - São Paulo, SP', 'carla.mendes@email.com', '11987654323'),
('Daniel Costa', '45678901234', '456789012345', 'Alameda Santos, 1011 - São Paulo, SP', 'daniel.costa@email.com', '11987654324'),
('Eduarda Rocha', '56789012345', '567890123456', 'Rua Augusta, 1213 - São Paulo, SP', 'eduarda.rocha@email.com', '11987654325'),
('Felipe Alves', '67890123456', '678901234567', 'Rua Oscar Freire, 1415 - São Paulo, SP', 'felipe.alves@email.com', '11987654326'),
('Gabriela Lima', '78901234567', '789012345678', 'Rua Haddock Lobo, 1617 - São Paulo, SP', 'gabriela.lima@email.com', '11987654327'),
('Henrique Silva', '89012345678', '890123456789', 'Rua da Consolação, 1819 - São Paulo, SP', 'henrique.silva@email.com', '11987654328'),
('Isabela Santos', '90123456789', '901234567890', 'Rua Frei Caneca, 2021 - São Paulo, SP', 'isabela.santos@email.com', '11987654329'),
('João Pereira', '01234567890', '012345678901', 'Rua Bela Cintra, 2223 - São Paulo, SP', 'joao.pereira@email.com', '11987654330');

#10 registros
INSERT INTO apadrinhamento (valor, data_, id_animal, id_padrinho) VALUES
(100.00, '2023-10-01', 1, 1),  -- Padrinho 1 apadrinhando o animal 1
(150.50, '2023-10-02', 2, 2),  -- Padrinho 2 apadrinhando o animal 2
(200.00, '2023-10-03', 3, 3),  -- Padrinho 3 apadrinhando o animal 3
(75.25,  '2023-10-04', 4, 4),  -- Padrinho 4 apadrinhando o animal 4
(300.00, '2023-10-05', 5, 5),  -- Padrinho 5 apadrinhando o animal 5
(50.00,  '2023-10-06', 6, 6),  -- Padrinho 6 apadrinhando o animal 6
(125.75, '2023-10-07', 7, 7),  -- Padrinho 7 apadrinhando o animal 7
(250.00, '2023-10-08', 8, 8),  -- Padrinho 8 apadrinhando o animal 8
(175.50, '2023-10-09', 9, 9);  -- Padrinho 9 apadrinhando o animal 9

# 10 Registros
INSERT INTO adocao (id_abrigo, id_animal, id_adotante, data_adoção) VALUES
(1, 1, 1, '2023-10-01 10:00:00'),  -- Adoção no abrigo 1, animal 1, adotante 1
(1, 2, 2, '2023-10-02 11:30:00'),  -- Adoção no abrigo 1, animal 2, adotante 2
(1, 3, 3, '2023-10-03 09:15:00'),  -- Adoção no abrigo 1, animal 3, adotante 3
(1, 4, 4, '2023-10-04 14:45:00'),  -- Adoção no abrigo 1, animal 4, adotante 4
(1, 5, 5, '2023-10-05 16:20:00'),  -- Adoção no abrigo 1, animal 5, adotante 5
(1, 6, 6, '2023-10-06 12:00:00'),  -- Adoção no abrigo 1, animal 6, adotante 6
(1, 7, 7, '2023-10-07 13:10:00'),  -- Adoção no abrigo 1, animal 7, adotante 7
(1, 8, 8, '2023-10-08 15:30:00'),  -- Adoção no abrigo 1, animal 8, adotante 8
(1, 9, 9, '2023-10-09 17:45:00'),  -- Adoção no abrigo 1, animal 9, adotante 9
(1, 10, 10, '2023-10-10 18:00:00'); -- Adoção no abrigo 1, animal 10, adotante 10
>>>>>>> 0d61975269df871b7e872b3d2b61f7fcd694e1e6

-- Inserindo dados na tabela Doação
-- Inserção de 10 registros
INSERT INTO Doacao (id_doador, id_animal, tipo, descricao, data_doacao) VALUES
(1, 2, 'Ração', 'Doação de 10 kg de ração para cães', '2025-03-06'),
(2, 5, 'Medicamento', 'Doação de vermífugo para tratamento de filhotes', '2025-03-05'),
(3, 8, 'Acessórios', 'Coleiras e brinquedos para animais do abrigo', '2025-03-04'),
(4, 12, 'Ração', 'Saco de 15 kg de ração para gatos', '2025-03-03'),
(5, 15, 'Dinheiro', 'Doação de R$ 500,00 para cuidados veterinários', '2025-03-02'),
(6, 3, 'Ração', 'Pacote de 5 kg de ração para filhotes', '2025-03-01'),
(7, 7, 'Medicamento', 'Remédios para tratamento de infecções', '2025-02-28'),
(8, 10, 'Acessórios', 'Cobertores e caminhas para cães e gatos', '2025-02-27'),
(9, 13, 'Ração', 'Ração úmida para gatos idosos', '2025-02-26'),
(10, 18, 'Dinheiro', 'Doação de R$ 1000,00 para cirurgias emergenciais', '2025-02-25');

-- Inserindo dados na tabela Quarentena
-- Inserção de 10 registros
INSERT INTO Quarentena (id_animal, data_entrada, motivo, status) VALUES
(3, '2025-03-01', 'Doença de pele contagiosa', 'Em tratamento'),
(6, '2025-02-28', 'Infecção respiratória', 'Em recuperação'),
(9, '2025-02-27', 'Suspeita de cinomose', 'Sob observação'),
(14, '2025-02-25', 'Resgate de maus-tratos', 'Em análise veterinária'),
(17, '2025-02-22', 'Fratura na pata', 'Aguardando cirurgia'),
(19, '2025-02-20', 'Desnutrição severa', 'Recebendo cuidados intensivos'),
(21, '2025-02-18', 'Parvovirose confirmada', 'Em isolamento total'),
(23, '2025-02-15', 'Suspeita de leptospirose', 'Realizando exames'),
(25, '2025-02-12', 'Recuperação pós-cirúrgica', 'Acompanhamento diário'),
(27, '2025-02-10', 'Ferimentos não cicatrizados', 'Aguardando alta médica');

-- Inserindo dados na tabela Abrigo
-- Inserção de 10 registros
INSERT INTO Abrigo (id_animal, id_adotante, data_entrada, status) VALUES
(1, NULL, '2025-02-20', 'Disponível para adoção'),
(4, NULL, '2025-02-18', 'Em recuperação médica'),
(7, NULL, '2025-02-15', 'Aguardando vacinação'),
(11, NULL, '2025-02-10', 'Processo de socialização'),
(16, 2, '2025-02-05', 'Adotado'),
(20, NULL, '2025-02-02', 'Em adaptação ao ambiente do abrigo'),
(22, NULL, '2025-01-30', 'Disponível para adoção'),
(24, NULL, '2025-01-25', 'Tratamento para pulgas e carrapatos'),
(26, NULL, '2025-01-22', 'Aguardando castração'),
(28, 5, '2025-01-20', 'Adotado');

