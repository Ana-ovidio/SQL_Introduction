SELECT TOP (100) * FROM FactSales
SELECT TOP (100) * FROM DimChannel
SELECT TOP (100) * FROM DimStore
SELECT TOP (100) * FROM DimProduct

-- Além de criarmos uma coluna para cada estrutura, usaremos uma união entre as tabelas. 
-- Não teria como utilizarmos o comando UNION ALL pois a quantidade de linhas é diferente para cada "subtabela"

-- No exercício, pede- se as interceções. 

SELECT 
	SalesKey, 
	ChannelName,
	StoreName,
	ProductName,
	SalesAmount
FROM 
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey= DimChannel.ChannelKey
INNER JOIN DimStore
	ON FactSales.StoreKey= DimStore.StoreKey
INNER JOIN DimProduct
	ON FactSales.ProductKey= DimProduct.ProductKey
ORDER BY SalesAmount DESC