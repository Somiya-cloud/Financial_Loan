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

WITH LOAN_UP_DOWN AS 
(Select Round(AVG(dti),4)*100 As Avg_DTI,
		EOMONTH(Issue_Date) as Issued_Monthly,
	   Month(Issue_Date) as Issued_Monthly_Name
From 
	dbo.Financial_Loan_V1
GROUP BY
	EOMONTH(Issue_Date),
	Month(Issue_Date)
)
SELECT
	Avg_DTI,
	Issued_Monthly,
	Issued_Monthly_Name,
	CASE 
		WHEN Avg_DTI > 20.00 THEN 'Good'
		WHEN Avg_DTI > 10 THEN 'Normal'
	ELSE 'Bad'
	END AS CATEGORY_DTI,
	LAG(Avg_DTI, 1) OVER (ORDER BY Issued_Monthly) AS Prev_Month_DTI,
	CASE
		WHEN LAG(Avg_DTI, 1) OVER (ORDER BY Issued_Monthly)  > 20 THEN 'GOOD'
		WHEN LAG(Avg_DTI, 1) OVER (ORDER BY Issued_Monthly) > 10 THEN 'NORMAL'
		ELSE 'BAD'
	END AS Category_Prev_DTI
FROM LOAN_UP_DOWN
ORDER BY Issued_Monthly,
Issued_Monthly_Name;
