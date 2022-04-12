-- DESAFIO 
-- Descobrir a quantidade de vendas totais de cada canal de venda. 

SELECT 
	ChannelName AS 'Canais de Vendas',
	SUM(SalesQuantity) as 'Qntd. Vendas'
FROM 
	FactSales
INNER JOIN DimChannel ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
ORDER BY SUM(SalesQuantity)

-- POR QUE?
-- Por que n�o usamos a fun��o COUNT ao inv�s de SUM?
--		Cada dia existem variadas quantidades de vendas. A fun��o COUNT contabilizaria uma vez. 


-- --------------------------------------------------------------------------

-- DESAFIO 
-- Descobrir a quantidade de produtos vendidos e produtos retornados de acordo com o nome da loja. 

SELECT 
	StoreName as 'Nome das Lojas',
	SUM(SalesQuantity) as 'Vendas Totais',
	SUM(ReturnQuantity) as 'Vendas Estornadas'
FROM 
	FactSales
INNER JOIN DimStore 
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY StoreName

-- --------------------------------------------------------------------------
-- DESAFIO 
-- Resumo do valor de vendas totais para cada m�s e para cada ano. 

SELECT 
	CalendarYear AS 'Ano',
	CalendarMonthLabel AS 'M�s' ,
	SUM(SalesAmount) AS 'Total de vendas'
FROM 
	FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.DateKey
GROUP BY CalendarYear, CalendarMonthLabel, CalendarMonth
ORDER BY SUM(SalesAmount) DESC