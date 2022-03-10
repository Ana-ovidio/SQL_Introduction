SELECT TOP (20) PERCENT
	FirstName as 'Nome do/ da cliente',
	EmailAddress as 'Contato',
	BirthDate as 'Data de aniversário'
FROM 
	DimCustomer
	