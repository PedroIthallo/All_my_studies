--Between usado para encontrar um valor entre dois 'valores' (valor => minimo AND valor =< máximo)
SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500; --trás os valores dentro do range de 1000 e 1500

SELECT ListPrice
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500; --trás os que NÃO estejam dentro do range de 100 e 1500

SELECT BusinessEntityID,HireDate
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01' --trás todos os que foram contratados nesse periodo 
ORDER BY HireDate;

--IN: nós usamos o operador IN junto com o WHERE, para verificar se um valor corresponde com qualquer valor passado na lista de valores
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13) --busca apenas o BusinessEntityID com os numeros de 2, 7 e 13 (pode usar o NOT IN tb)

--LIKE: serve para encontrar algo que talvez vc não saiba o nome/numero ou caracteristicas completas
--exemplo o nome otavio, mas vc só lembra que tinha ota... no nome
SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'PET%' --vai retornar qualquer nome que comece com essas 3 letras

--pode ser usado pra encontrar o final tambem
SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '%er'--encontra um nome que tenho o final com "ER" e se colocar %er% ele vai acahr qualquer coisa que tenha er no meio

--Desafio 1: quantos produtos temos cadastrados no sistemas que custam mais de 1500 dolares?
--Resultado:
SELECT count(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500 

--desafio 2: quantas pessoas temos com o sobrenome que inicia com a letras P?
--resultado:
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'

--Desafio 3:em quantas cidades únicas estão cadastradas nosso cliente?
--resultado:
SELECT COUNT(DISTINCT City)
FROM person.Address

--Desafio 4: quais são as cidades sunicas cadastradas em nosso sistema?
--Resultado:
SELECT DISTINCT City
FROM person.Address

--desafio 5: quantos produtos vermelhos tem o preço entre 500 e 1000 dolares?
--Resultado:
SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'red' AND ListPrice BETWEEN 500 AND 1000 

--desafio 6: Qauntos produtos cadastrados tem a palavra 'road' no nome deles?
--Resultado:
SELECT count(Name)
FROM Production.Product
WHERE Name LIKE '&road&'
