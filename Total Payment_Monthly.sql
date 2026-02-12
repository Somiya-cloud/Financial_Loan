SELECT 
	SUM(total_Payment) as ToTal_Payment
FROM
	DBO.Financial_Loan_V1;

SELECT 
	SUM(total_Payment) as ToTal_Payment
FROM
	DBO.Financial_Loan_V1
WHERE
	Month(Issue_Date) = 12
Group by 
	Month(Issue_Date);
	
SELECT 
	SUM(total_Payment) as Monthly_Total_Payment,
	Month(Issue_Date) as Monthly_Issued
FROM
	DBO.Financial_Loan_V1
GROUP BY
	Month(Issue_Date);





