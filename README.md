# Sistema de ONG voltada à Resgate Animal 
O sistema auxilia os voluntários no passo a passo dos processos passados pelo animal resgatado, desde a denúncia feita do animal que precisa de 
cuidados, a fase onde ele recebe os tratamentos veterinários até a fase final onde ele finalmente pode ser levado para a adoção. Esse processo
ajuda a monitorar e a cuidar dos animais e fornecer a eles a oportunidade de conseguirem um lar. 

* [dbdiagram](https://dbdiagram.io/d/ONG-resgate-animais-67b8c68b263d6cf9a008191b)  - MODELO DE RELACIONAMENTOS 
* [BRMW](https://app.brmodeloweb.com/#!/publicview/67b0dba0196e5b4cebac5309) - MODELO CONCEITUAL
* [slides](https://www.canva.com/design/DAGgs3zI63U/M1gPocKAYVmN3dzKIV3jqA/view?utm_content=DAGgs3zI63U&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=h4d32f1c5b4) - SLIDES 

## As entidades do sistema são:
* Denúncia: Denúncia vai conter a foto, a descrição do caso da denúncia e o status da denúncia, se ela já foi resolvida ou se ainda está em aberta.
* Denúncia_animal: Tabela intermediária entre denúncia e denúncia animal. 
* Animal: Contém todos os detalhes sobre o animal, porte fisico, idade, espécie, status_animal que irá registrar se ele pode ser levado para o abrigo de adoção ou se
 ele deverá continuar em quarentena recebendo tratamentos 
* ainda deve passar por algum processo como a quarentena e tratamentos médicos. 
* Clinica: Vai conter todas as informações de todos os procedimentos que o animal fez na clínica. Irá conter os tratamentos e as vacinas já aplicadas,
irá conter se ele já passou por uma castração, vai conter o veterinário responsável pelo animal e pelo seu tratamento, 
Veterinario: Todas as informações necessárias do veterinário - Nome, CPF, RG, telefone, CRM, e-mail.
* Quarentena: Quarentena vai registrar todos os animais que estão de quarentena. Nele vai conter as informações do animal, do veterinário responsável por ele. 
* Abrigo: Vai informar todos os animais que estão no abrigo.
* Adoção: Registra as adoções de animais como as informações do animal, do adotante, documentação e a data de adoção.
* Adotante:  Todas as informações necessárias do adotante - Nome, CPF, RG, telefone, e-mail, endereço.
* Doação: Armazena as doações recebidas 
* Apadrinhamento: Vai mostrar quem apadrinhou o animal, o valor no apadrinhamento, o padrinho e o animal apadrinhado
* Padrinho e doador: Todas as informações do padrinho e do doador, Nome, CPF, RG, telefone, e-mail. 

 # Responsáveis:
* [Evelyn Soares](https://github.com/EvelynS-Dias) 
* [Felipe Xavier](https://github.com/xXTHUND3RXx) 
* [Riane Ferreira](https://github.com/rianefm)
* [Gisele Gomes](https://github.com/Jhope122)
* [Daiane Barbosa](https://github.com/DaihSeven)
* [Helen Gonçalves](https://github.com/Helen157)

  ## Agradecimentos:
   Agradeço a PDA aos ensinamentos e aos meus colegas de SQUAD, amei trabalhar com vocês.



