SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

-- Analisando as tabelas, n�o h� uma coluna em comum para realizar a busca e uni�o entre elas. 
-- SOLU��O: Buscar uma tabela intermedi�ria. 

SELECT * FROM DimProductCategory

-- -------------------------------------------------------------------------------------------

SELECT 
	ProductName AS 'Nome do Produto',
	ProductCategoryDescription AS 'Categoria do produto'
FROM 
	DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
