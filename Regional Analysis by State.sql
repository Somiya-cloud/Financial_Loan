--Regional Analysis by State

SELECT 
	address_state as Address_State,
	count(id) as Total_Loan_Applications,
	Sum(Loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Received_Amount
FROM dbo.Financial_Loan_V1
Group by
	address_state
ORDER BY 
	address_state;
