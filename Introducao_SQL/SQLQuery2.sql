/* Descontos especiais para clientes nos dias de seus anivers�rios */

SELECT
	CustomerKey as id,
	FirstName as 'Nome do cliente',
	EmailAddress as 'Email',
	BirthDate as 'Data de anivers�rio'
FROM 
	DimCustomer