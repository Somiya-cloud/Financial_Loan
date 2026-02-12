Select Round(SUM(installment),2) AS Total_Receiving
FROM dbo.Financial_Loan_V1;

Select Round(SUM(installment),2) As Monthly_Receiving,
			Month(Issue_Date) AS Monthly_Issued
FROM dbo.Financial_Loan_V1
Group by Month(Issue_Date)

Select Round(SUM(installment),2) As Monthly_Receiving,
			EOMonth(Issue_Date) AS Monthly_Issued
FROM dbo.Financial_Loan_V1
Group by EOMonth(Issue_Date)
ORDER BY EOMonth(Issue_Date) ASC;