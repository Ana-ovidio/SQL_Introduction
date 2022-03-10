/* Descontos especiais para clientes nos dias de seus aniversários */

SELECT
	CustomerKey as id,
	FirstName as 'Nome do cliente',
	EmailAddress as 'Email',
	BirthDate as 'Data de aniversário'
FROM 
	DimCustomer