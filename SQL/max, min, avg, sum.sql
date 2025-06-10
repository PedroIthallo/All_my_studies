-- funções de agregação basicamente agregam ou combinam dados de uma tabela em 1 resultado só

SELECT TOP 10  sum(linetotal) AS "SOMA" -- sum fez a soma da coluna linetotal e o AS renomeou para "SOMA"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(linetotal) AS "MINIMO" -- Selecionou o valor minimo da coluna LineTotal e renomeou para ""MINIMO"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(LINETOTAL) AS "MAXIMO" -- trouxe o valor maximo e Renomeou pra "MAXIMO"
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(LINETOTAL) AS "MÉDIA" -- trouxe o valor medio e Renomeou pra "MÉDIO"
FROM Sales.SalesOrderDetail
