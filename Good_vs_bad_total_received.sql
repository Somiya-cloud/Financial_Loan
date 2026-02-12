SELECT *
FROM dbo.Financial_Loan_V1

SELECT 
		SUM(total_payment) as Total_Received,
		Loan_Status,
		CASE
			WHEN Loan_Status = 'Fully Paid' THEN 'GOOD'
			WHEN Loan_Status = 'Current' THEN 'Good'
			ELSE 'BAD'
			END AS Categorical_Payments
FROM dbo.Financial_Loan_V1
Group By Loan_Status;

