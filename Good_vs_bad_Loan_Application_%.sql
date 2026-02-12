WITH C AS (
    SELECT loan_status,
        CASE 
            WHEN RTRIM(loan_status) IN ('FULLY PAID','CURRENT') THEN 'GOOD'
            ELSE 'BAD'
        END AS Category
    FROM dbo.Financial_Loan_V1
)
SELECT
	Loan_Status,
    Category,
    COUNT(*) AS Count_of_Category,
    (COUNT(*)*100/(SELECT COUNT(*) FROM DBO.Financial_Loan_V1))
FROM C
GROUP BY 
Loan_Status,
Category
ORDER BY CATEGORY ASC;