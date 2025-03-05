use resgate_animal;

INSERT INTO animal (porte, raca, genero, especie, RGA, idade, status_animal) VALUES
('Médio', 'Labrador', 'macho', 'cachorro', NULL, 3, 'saudavel'),
('Baixo', 'Poodle', 'fêmea', 'cachorro', NULL, 5, 'em tratamento'),
('Grande', 'Pastor Alemão', 'macho', 'cachorro', NULL, 4, 'saudavel'),
('Médio', 'Beagle', 'fêmea', 'cachorro', NULL, 2, 'em analise'),
('Gigante', 'São Bernardo', 'macho', 'cachorro', NULL, 6, 'não aprovado'),
('Médio', 'Schnauzer', 'macho', 'cachorro', NULL, 3, 'saudavel'),
('Baixo', 'Buldogue Francês', 'fêmea', 'cachorro', NULL, 2, 'em analise'),
('Grande', 'Golden Retriever', 'macho', 'cachorro', NULL, 5, 'saudavel'),
('Médio', 'Shih Tzu', 'fêmea', 'cachorro', NULL, 4, 'em tratamento'),
('Gigante', 'Dogue Alemão', 'macho', 'cachorro', NULL, 7, 'não aprovado'),
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

INSERT INTO veterinario (nome, CRMV, cpf, RG, telefone, email) VALUES
('Dr. João Silva', 'SP123456', '123456789012', '123456789', 11987654321, 'joao.silva@email.com'),
('Dra. Maria Oliveira', 'RJ654321', '987654321098', '987654321', 21987654321, 'maria.oliveira@email.com'),
('Dr. Carlos Mendes', 'MG789456', '456789123456', '456789123', 31987654321, 'carlos.mendes@email.com'),
('Dra. Ana Souza', 'RS147258', '369852147369', '369852147', 41987654321, 'ana.souza@email.com'),
('Dr. Felipe Rocha', 'PR963852', '258741369258', '258741369', 51987654321, 'felipe.rocha@email.com'),
('Dr. Ricardo Alves', 'BA852963', '159357852963', '159357852', 61987654321, 'ricardo.alves@email.com');


INSERT INTO clinica (id_veterinario, id_animal, vacina_aplicada, tratamento, castracao, descricao_caso) VALUES
(1, 3, 'Vacina Raiva', 'Antibiótico', TRUE, 'Cachorro chegou com ferimento na pata'),
(2, 5, 'Vacina V10', 'Vermífugo', FALSE, 'Filhote saudável, apenas vermifugação'),
(3, 11, 'Vacina Antirrábica', 'Tratamento de pele', FALSE, 'Gato com dermatite leve'),
(4, 10, 'Vacina V8', 'Cirurgia de esterilização', TRUE, 'Cachorro castrado e em recuperação'),
(5, 12, 'Vacina Felina', 'Observação clínica', FALSE, 'Gato resgatado, avaliação inicial realizada'),
(6, 6, 'Vacina Polivalente', 'Hidratação e antibiótico', TRUE, 'Cachorro resgatado com sinais de desidratação e infecção de pele'),
(2, 18, 'Vacina Antirrábica', 'Check-up geral', FALSE, 'Gato adulto em boas condições, apenas vacinação realizada'),
(1, 8, 'Vacina V10', 'Exame de sangue', TRUE, 'Cachorro resgatado com sinais de anemia'),
(3, 22, 'Vacina Polivalente', 'Tratamento antipulgas', FALSE, 'Gato com infestação de pulgas, em tratamento'),
(5, 24, 'Vacina Antirrábica', 'Cirurgia de remoção de tumor', TRUE, 'Cachorro passou por cirurgia para remoção de tumor benigno'),
(4, 25, 'Vacina V8', 'Fisioterapia', FALSE, 'Cachorro com problema locomotor, encaminhado para fisioterapia'),
(6, 21, 'Vacina Felina', 'Vacinação', TRUE, 'Gato com leves ferimentos, em tratamento'),
(2, 19, 'Vacina Antirrábica', 'Tratamento ocular', FALSE, 'Gato com infecção ocular leve, em acompanhamento'),
(1, 4, 'Vacina V10', 'Exame cardíaco', TRUE, 'Cachorro idoso, monitoramento cardíaco necessário'),
(3, 23, 'Vacina Polivalente', 'Tratamento de micose', FALSE, 'Gato com sinais de micose, iniciou tratamento');


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
(11574573239, 'Gato encontrado com manchas na pele e perda de pelos', NULL, 14)