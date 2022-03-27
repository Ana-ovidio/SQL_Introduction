SELECT TOP (100) * FROM FactSales
SELECT TOP (100) * FROM DimChannel
SELECT TOP (100) * FROM DimStore
SELECT TOP (100) * FROM DimProduct

-- Al�m de criarmos uma coluna para cada estrutura, usaremos uma uni�o entre as tabelas. 
-- N�o teria como utilizarmos o comando UNION ALL pois a quantidade de linhas � diferente para cada "subtabela"

-- No exerc�cio, pede- se as interce��es. 

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