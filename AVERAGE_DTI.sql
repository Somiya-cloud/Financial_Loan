Select *
From dbo.Financial_Loan_V1;

Select Round(AVG(dti),4)*100 As Avg_DTI,
		EOMONTH(Issue_Date) as Issued_Monthly,
	   Month(Issue_Date) as Issued_Monthly_Name
From 
	dbo.Financial_Loan_V1
GROUP BY
	EOMONTH(Issue_Date),
	Month(Issue_Date)
ORDER BY
	EOMONTH(Issue_Date);