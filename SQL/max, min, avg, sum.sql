-- fun��es de agrega��o basicamente agregam ou combinam dados de uma tabela em 1 resultado s�

SELECT TOP 10  sum(linetotal) AS "SOMA" -- sum fez a soma da coluna linetotal e o AS renomeou para "SOMA"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(linetotal) AS "MINIMO" -- Selecionou o valor minimo da coluna LineTotal e renomeou para ""MINIMO"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(LINETOTAL) AS "MAXIMO" -- trouxe o valor maximo e Renomeou pra "MAXIMO"
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(LINETOTAL) AS "M�DIA" -- trouxe o valor medio e Renomeou pra "M�DIO"
FROM Sales.SalesOrderDetail
