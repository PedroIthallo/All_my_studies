SELECT LastName 
FROM person.Person

SELECT DISTINCT LastName --DISTINCT busca sem duplicados
FROM person.Person

--WHERE indica exatamente oq vc quer procurar, nesse caso, produtos com cor azul e/ou vermelha
SELECT *
FROM production.Product
WHERE color = 'blue' or color = 'red'

--neste caso estou procurando os produtos com valor acima de 1500
SELECT *
FROM production.Product
WHERE ListPrice > 1500

-- ou eu posso trazer por range
SELECT *
FROM production.Product
WHERE ListPrice > 1500 and ListPrice < 5000

--aqui ele me tras tudo que for diferente <> de 'qualquerValor'
SELECT *
FROM production.Product
WHERE color <> 'red'

--desafio1: A equipe de produção de produtos precisa do nome de todas as peças que pesam mais de 500kg mas não mais de 700kg para inspeção
--Resultado:
SELECT Weight, name
FROM production.Product
WHERE Weight > 500 and Weight < 700

--Desafio2: foi pedido pelo masrketing uma relação de todos os empregados que são casado e são asalariados
--Resultado:
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'm'AND SalariedFlag = '1'

--Desafio3: um usuário chamado 'Peter Krebs' está devendo um pagamento, consiga o email dele para que possamos enviar uma cobrança!
--Resultado:
SELECT FirstName, LastName, BusinessEntityID
FROM person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs'

SELECT *
FROM person.EmailAddress
WHERE BusinessEntityID = '26'


--COUNT restona a contagem geral de uma tabela
SELECT COUNT(*) --retorno 19972 linhas
FROM Person.Person 

SELECT COUNT(Title) --retorno 1009 titulos, se eu adicionar um DISTINCT ele me tras 6 titlulos diferesntes (sem repetições)
FROM Person.Person 

--Desafio1:eu quero saber quantos produtos temos cadastrados em nossa tabela produtos
--Resultado:504
SELECT count(*)
FROM Production.Product

--Desafio2: eu quero saber quantos tamanhos de produtos temos cadastrados nessa tabela
--Resultado:211
SELECT count(Size)
FROM Production.Product

--Desafio3: eu quero saber quantos tamnhos de produtos diferentes temos cadastrados em nossa tabela
--Resultado:18
SELECT count(DISTINCT Size)
FROM Production.Product

--Comando TOP vai filtrar os dados do SELECT
SELECT TOP	10 * --retorna os 10 primeiros de todos os produtos da tabela
FROM Production.Product

--ORDER BY os resultados da forma que vc desejar
SELECT *
FROM person.Person
ORDER BY FirstName asc --está ordenando de forma ascendente trazendo nomes de A a Z

--Desafio1: Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro pro mais barato
--Resultado:
SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc

--Desafio2: Obter o nome e o numero do produto, dos produtos que tem o productId entre 1~4
--Resultado:
SELECT TOP 4 name,ProductNumber
FROM Production.Product
ORDER BY ProductID asc;







