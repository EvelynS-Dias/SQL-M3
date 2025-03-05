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