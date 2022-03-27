SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

-- Analisando as tabelas, não há uma coluna em comum para realizar a busca e união entre elas. 
-- SOLUÇÃO: Buscar uma tabela intermediária. 

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
