SELECT 
	COUNT(ID) AS Total_Applications,
		MONTH(ISSUE_DATE) as Monthly_loan_Issue
FROM 
	DBO.Financial_Loan_V1
GROUP BY 
	MONTH(ISSUE_DATE);
