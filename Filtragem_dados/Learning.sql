-- ORDER BY
-- Odenando valores (ASC e DESC: ordem crescente e descrescente respectivamente)
-- Ordena de acordo com uma coluna de referência
SELECT TOP (100)
	StoreKey,
	StoreName
FROM
	DimStore
ORDER BY StoreName DESC

-- ____________________________________________________________________________________________

-- WHERE
-- Permite- nos fazer um filtro de acordo com alguma referência 
-- Isso será conectado a condicionais
SELECT TOP (100)
	UnitPrice,
	UnitCost,
	ProductKey
FROM 
	DimProduct
WHERE UnitPrice >= 1000

-- produtos da que são somente da loja contoso cujas cores são vermelhas ou pretas
SELECT 
	*
FROM DimProduct
WHERE (BrandName='Contoso') AND (ColorName='Black' OR ColorName='Red')

-- similar ao Python if x in [...]
SELECT TOP (100) 
	*
FROM DimProduct
WHERE ColorName IN ('Blue', 'Red', 'Black', 'Silver')

-- busca entre intervalos ou fora dos intervalos 
SELECT TOP (100)
	*
FROM FactSales
WHERE SalesQuantity BETWEEN 10 AND 15

-- identificar valores nulos 
SELECT * FROM DimCustomer
WHERE FirstName IS NULL 

SELECT * FROM DimCustomer
WHERE FirstName IS NOT NULL 

-- ____________________________________________________________________________________________

-- WHERE .. LIKE
-- Busca padrões de strings nos elementos da coluna de uma tabela. 
-- Devem existir dois caracteres especiais em conjunto com o LIKE: % e _
SELECT *
FROM DimCustomer
WHERE EmailAddress LIKE 'a%' 