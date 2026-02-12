Select *
From dbo.Financial_Loan_V1;

Select ROUND(Avg(int_rate),4) *100 as Average_Interest_Rate
From dbo.Financial_Loan_V1;

Select ROUND(Avg(int_rate),4) *100 as Average_Interest_Rate,
			EOMONTH(ISSUE_DATE) AS Issued_Monthly,
				MONTH(ISSUE_DATE) AS Issued_Monthly
From dbo.Financial_Loan_V1
GROUP BY 
	EOMONTH(ISSUE_DATE),
	MONTH(ISSUE_DATE)
Order by
	MONTH(Issue_Date) ASC;