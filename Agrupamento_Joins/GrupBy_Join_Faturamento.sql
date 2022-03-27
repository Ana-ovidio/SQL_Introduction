SELECT TOP (100) * FROM FactStrategyPlan
SELECT TOP (100) * FROM DimAccount

-- Cada linha representa os montantes de uma determinada conta. 
-- As contas s�o identificadas pela 'AccountKey'

SELECT 
	StrategyPlanKey, 
	DateKey, 
	AccountName, 
	Amount
FROM 
	FactStrategyPlan
INNER JOIN DimAccount
	ON FactStrategyPlan.AccountKey = DimAccount.AccountKey

-- Nesse caso, n�o h� o faturamento total. Para sabermos a quantidade, � necess�rio realizar um GROUP BY

SELECT 
	AccountName AS 'Conta', 
	SUM(Amount) AS 'Faturmento Tatal'
FROM 
	FactStrategyPlan
INNER JOIN DimAccount
	ON FactStrategyPlan.AccountKey = DimAccount.AccountKey
GROUP BY AccountName