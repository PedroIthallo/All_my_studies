-- GROUP BY BASICAMENTE DEVIDE O RESULTADO DA SUA PESQUISA PARA CASA GRUPO VC PODE APLICAR UMA FUNÇÃO DE AGREGAÇÃO, POR EXEMPLO:
--calcular a soma de itens
--contar o numero de itens naquele grupo

SELECT *
FROM Sales.SalesOrderDetail

--vai trazer a coluna SpecialOfferId somar com a coluna UnitPrice, vai me trazer a soma na coluna "soma" e vai organizar por ordem crescente 
SELECT SpecialOfferId, SUM(UnitPrice) as "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
ORDER BY SpecialOfferID asc

--quero saber quantos produtos já foram vendidos até hoje
SELECT ProductID, COUNT(ProductID) AS "CONTAGEM" --ACHA A COLUNA 'ProductID', FAZ A CONTAGEM COM O 'COUNT' E RENOMEIA PRA "CONTAGEM"
FROM Sales.SalesOrderDetail -- SELECIONA A TABELA 'Sales.SalesOrderDetail'
GROUP BY ProductID -- AGRUPA A COLUNA 'ProductID'
ORDER BY ProductID ASC -- COLOCA NA ORDEM CRESCENTE A COLUNA 'ProductID' TRAZENDO O RESULTADO COMO 'CONTAGEM'

--Quero saber quantos nomes tem cadastrados em nosso banco de dados
SELECT *
FROM Person.Person

SELECT FirstName, COUNT(FirstName) as "CONTAGEM"
FROM Person.Person
GROUP BY FirstName

-- na tabela production.product eu quero saber a média de preço para os produtos que são pratas(silver)
SELECT *
FROM Production.Product

SELECT Color, AVG(ListPrice) "Preco"
FROM Production.Product
WHERE Color = 'SILVER'
GROUP BY Color 

--DESAFIO 1: EU QUERO SABER QUANTAS PESSOAS TEM O MESMO MIDDLENAME AGRUPADAS PELO MIDDLENAME
--RESULTADO:
SELECT *
FROM Person.Person

SELECT MiddleName,COUNT(MiddleName) AS "TOTAL" 
FROM Person.Person
GROUP BY MiddleName

--Desafio 2: eu quero em MÉDIA saber as quantidade(quantity) que cada produto é vendido na loja.
--Resultado:
SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, avg(OrderQty) "MÉDIA"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID ASC

--DESAFIO 3: eu quero saber quais foram as 10 vendas que no total tiveram os maiores valores de venda(line total) 
--por produto do maior valor pro menor valor
--Resultado:
SELECT *
FROM Sales.SalesOrderDetail

SELECT TOP 10 ProductID, SUM(LineTotal) AS "TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC

--Desafio 4: preciso saber quantos produtos e qual a quantidade média de produtos temos cadastrados nas nossas ordens de serviço (workOrder)
--agrupados por 'productId'
--Resultado:
SELECT *
FROM Production.WorkOrder

SELECT  ProductID, COUNT (ProductID) "CONTAGEM", 
AVG(StockedQty) AS "MÉDIA"
FROM Production.WorkOrder
GROUP BY ProductID
