# SQL
Para a estruturação de um banco de dados relacionais utiliza-se a linguagem SQL, que consiste em tabelas de dados, no quais cada um possui uma chave primária que identifica o dado em questão e suas relações com outros é definido por chave estrangeira.
	A relação de um dado para outro pode ser definido por lógica ou por regras de negócio, seus tipos se classificam como:
  
1..N – Um dado está relacionado com múltiplos. Por exemplo, um cliente pode possuir vários pedidos, um pedido possui vários itens, entre outros;

1..1 – Um dado se relaciona só com um dado. Por exemplo, um carro só pode ter um dono.

N..N – Vários dados possuem vários dados, nesse tipo de relação se cria uma tabela intermediária de 1..N. Exemplo, numa livraria vários autores escrevem vários livros, então cria-se uma tabela que só há a chave primária do livro e do autor.

# Subconjuntos de SQL

Podemos fragmentar a SQL nos seguintes subconjuntos, cada uma com um papel essencial em criação ou manutenção desse banco
- DDL(Data Definition Language) – se trata dos comandos que constroem o banco de dados, sendo eles:
  - CREATE para criar objetos, podendo ser um banco de dados vazio ou uma tabela.
  - DROP para deletar objetos, deve-se tomar muito cuidado com esse comando pois pode causar prejuízos irrecuperáveis
  - ALTER para alterar objetos existentes, por exemplo adicionar uma chave estrangeira a alguma tabela, mudar o tipo de dado, etc
  - RENAME para renomear objetos
- DML (Data Manipulation Language) – são comandos que manipulam os dados em si, os atualizando, os deletando e os inserindo, ou seja “populam” o banco de dados:
  - INSERT acompanhada de INTO, permite inserir dados
  - UPDATE permite atualização de dados, recomenda-se o acompanhamento de WHERE para saber especificamente o que
  - DELETE permite a exclusão de dados, se não houver uma cláusula Where, todos os dados da tabela serão apagados
- DQL(Data Query Language) – responsável para a consulta de dados, sendo constituído por apenas um elemento.
  - SELECT, junto a outros complementos pode-se selecionar vários dados correlacionados por exemplo utilizando a cláusula WHERE para selecionar um pedido feito a 5 dias atrás.
- DCL (Data Control Language) – este controla o acesso aos dados, em outras palavras está relacionado a segurança
  - GRANT, dá um privilégio a uma pessoa de acessar
  - REVOKE, retira o privilégio
- DTL (Data Transaction Language) – gerencia e controla as transações
  - BEGIN/SET TRANSACTION, iniciam a transação e devem ser inseridos no começo do código, a diferença entre os 2 é que o SET pode especificar a transação
  - COMMIT, aparece no final do código, serve para finalizar a transação a berta pelo BEGIN/SET
  - ROLLBACK, restaura antes da utilização do último set
  - SAVEPOINT, cria um ponto de restauração e não pode ser desfeito pelo ROLLBACK


# ACID

As aplicações possuem vários usuários, os dados que são acessados devem passar pelos princípios ACID, que visa:
- a atomicidade (as transações são tratadas como entidades separadas uma das outras, como as que vão completar e que irão falhar);
- a consistência (os dados gravados devem ser válidos de acordo com as regras do sistema e evitar entrada de dados ilegais);
- o isolamento (uma transição em andamento deve estar separada, até ser validada, podemos dizer que quando 2 clientes estão consultando o mesmo produto suas sessões devem estar separadas e só influenciadas quando um deles decidir compra);
- e a durabilidade (uma vez realizada deve se manter no estado, mesmo que ocorra um erro no sistema).



# NoSQL 

Há casos em que o banco de dados relacionais não conseguem suprir a demanda, principalmente se exigir muitos dados vindo de múltiplos locais, com isso se há a utilização de bancos não relacionais NoSql (Not Only SQL).
Diferente dos relacionais, não se tem um padrão de dados, pode-se inserir qualquer tipo de dado sem ter uma formatação somente um atributo “chave” : “valor”, para se utilizar somente necessita de JSON, CSV ou XML.
As formas mais populares de modelar esses dados são:
- Grafo – Um dado é conectado a outro através de relações, muito utilizado em redes sociais
- Documentos – uma database guarda várias collections de dados semelhantes
- Chave-Valor – para resgatar um valor ou vários é necessário um valor chave
- Coluna - se resgata dados de uma coluna

Os bancos NoSQL não presam tanto a consistência, então não se utilizam de acid e sim de BASE, um acrônimo para Bassically Avaible Soft state Eventually Consistent, no lugar disso se há mais disponibilidade, no qual eventualmente terá dados consistentes não se sabe quando mas terá.

