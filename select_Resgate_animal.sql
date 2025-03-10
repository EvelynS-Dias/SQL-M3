# Qual a quantidade de animais resgatados
SELECT COUNT(id_animal) FROM Animal;

# Qual a quantidade de doações
SELECT COUNT(id_doacao) FROM Doacao;

# Filhote, adulto idoso.
Select id_animal, idade,
case  
when idade <= 1 then "Filhote"
when idade between 2 and 6 then "Adulto"
else  "Idoso" 
end as faixa_etaria
from animal;

#Padrinhos e animais que apadrinharam 
Select
 p.nome as padrinho, a.id_animal, a.genero, a.raça
from animal a
inner join apadrinhamento ap on ap.id_animal = a.id_animal
inner join padrinho p on ap.id_padrinho = p.id_padrinho;

#Veterinários responsáveis por animais nas clinicas
Select 
v.nome, v.email, c.id_animal
from veterinario v 
join consulta c on c.id_veterinario = v.id_veterinario;

#Quantidade de animais cuidados por veterinário 
Select 
v.nome, v.email, count(c.id_animal) as total_animais
from veterinario v 
join consulta c on c.id_veterinario = v.id_veterinario
group by v.nome, v.email;

#Quantidade de doação em dinheiro recebido
select SUM(valor) as valor_total from doacao;
#Verifica se o status do animal na tabela Animal corresponde ao fato de ele estar em quarentena. Essa consulta ajudará a garantir 
#que os animais listados na tabela Quarentena tenham o status correto na tabela Animal.
SELECT 
    Q.id_animal,
    A.status_animal,
    Q.data_entrada,
    Q.id_veterinario,
    Q.id_consulta
FROM Quarentena Q
JOIN Animal A ON Q.id_animal = A.id_animal;

#Listar todos os animais que estão em quarentena
SELECT * FROM Animal WHERE status_animal = 'em quarentena';

#Listar todos os animais que estão em tratamento
SELECT * FROM Animal WHERE status_animal = 'em tratamento';

#Listar todos os animais que estão no abrigo
SELECT * FROM Animal WHERE status_animal = 'no abrigo';

#Listar todas as denúncias em andamento
SELECT * FROM denuncia_animal WHERE status = 'Em andamento';

#Listar todas as denúncias com descrição contendo a palavra "ferimento"
SELECT * FROM denuncia WHERE descricao LIKE '%ferimento%';

#Listar todos os animais apadrinhados e seus padrinhos(quase igual o outro)
SELECT a.raça, a.espécie, p.nome AS padrinho, ap.valor, ap.data_ 
FROM Animal a
JOIN apadrinhamento ap ON a.id_animal = ap.id_animal
JOIN padrinho p ON ap.id_padrinho = p.id_padrinho;

#Listar todos os animais que passaram por cirurgia
SELECT a.* FROM Animal a
JOIN consulta c ON a.id_animal = c.id_animal
WHERE c.descricao_caso LIKE '%Cirurgia%';

#Listar todos os animais que estão em quarentena e os veterinários responsáveis
SELECT a.raça, a.espécie, v.nome AS veterinario, q.data_entrada, q.data_saida 
FROM Animal a
JOIN Quarentena q ON a.id_animal = q.id_animal
JOIN veterinario v ON q.id_veterinario = v.id_veterinario;

#Qual a quantidade de filhotes, adultos e idosos
SELECT 
CASE 
WHEN idade <=1 THEN 'filhote'
WHEN idade BETWEEN 2 AND 6 THEN 'adulto'
ELSE 'idoso' END AS faixa_etaria,
COUNT(*) AS quantidade FROM animal 
GROUP BY faixa_etaria;
   
   
# Quantidade de gatos e cachorros
SELECT espécie, COUNT(*) 
AS quantidade 
FROM animal 
WHERE espécie IN ('gato','cachorro')
GROUP BY espécie;

# Número de animais em tratamento, em quarentena , adotados e em abrigo
SELECT status_animal,
COUNT(*) AS quantidades_de_animais
FROM animal 
WHERE status_animal IN('em quarentena','no abrigo','em tratamento','adotado') 
GROUP BY status_animal;

#Status do animal , espécie e quantidade de animais em tratamento, no abrigo e em quarentena por gênero
SELECT a.genero, a.status_animal, a.espécie,
COUNT(a.id_animal) AS quantidade
FROM animal a 
WHERE a.status_animal IN ('em tratamento', 'em quarentena','no abrigo') 
GROUP BY a.genero, a.status_animal,a.espécie;

# Espécie de animais adotados e quantidade por gênero
SELECT a.espécie,
a.status_animal,
a.genero,
COUNT(a.id_animal)AS quantidade
FROM animal a 
JOIN adocao adoc ON
a.id_animal = adoc.id_animal  GROUP BY a.espécie, a.status_animal,a.genero;


# Número de animais em tratamento, em quarentena , adotados e em abrigo
SELECT status_animal,
COUNT(*) AS quantidades_de_animais
FROM animal 
WHERE status_animal IN('em quarentena','no abrigo','em tratamento','adotado') 
GROUP BY status_animal;