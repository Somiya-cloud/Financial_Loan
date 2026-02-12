-- Loan Term Analysis 

SELECT 
	term as Loan_Term,
	Count(id) as Total_Loan_Applications,
	SUM(Loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Received_Amount
FROM 
	dbo.Financial_Loan_V1
Group by 
	term
ORDER BY 
	term;

