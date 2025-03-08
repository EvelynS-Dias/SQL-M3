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