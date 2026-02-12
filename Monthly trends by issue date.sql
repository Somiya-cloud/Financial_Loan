SELECT
	month(issue_date) as Month_number,
   datename (month,issue_date) AS Issue_Year,
    COUNT(id) AS Total_Loans,
    SUM(loan_amount) AS Total_Loan_Amount,
    SUM(total_payment) AS Total_Payment
FROM dbo.Financial_Loan_V1
GROUP BY
month(issue_date),
datename (month,issue_date)
ORDER BY MONTH(issue_date);

