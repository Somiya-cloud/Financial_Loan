SELECT SUM(LOAN_AMOUNT) AS Total_Loan_Amount
FROM DBO.Financial_Loan_V1;

SELECT SUM(LOAN_AMOUNT) AS Total_Loan_Amount,
		MONTH(ISSUE_DATE) AS Monthly_Issued
FROM DBO.Financial_Loan_V1
GROUP BY MONTH(ISSUE_DATE);