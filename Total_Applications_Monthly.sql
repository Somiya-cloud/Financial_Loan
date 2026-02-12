SELECT COUNT(Issue_Date) AS Month_Total_Applications,
Month(Issue_date) as Monthly_Wise
FROM dbo.Financial_Loan_V1
where Month(Issue_Date) = 12
Group by Month(Issue_date)


