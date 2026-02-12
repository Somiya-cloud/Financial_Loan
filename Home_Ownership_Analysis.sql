--Home Ownership Analysis

SELECT 
	home_ownership as Home_Ownership,
	Count(id) as Total_Loan_Applications,
	SUM(Loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Received_Amount
FROM 
	dbo.Financial_Loan_V1
Group by 
	home_ownership
ORDER BY 
	Count(id);
