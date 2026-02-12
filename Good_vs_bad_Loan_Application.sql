--GOOD LOAN APPLICATION

WITH Categorical_Performance AS
(
 SELECT
        ID,
        Loan_Status,
        CASE 
            WHEN Loan_Status IN ('FULLY PAID','CURRENT') THEN 'GOOD'
            ELSE 'BAD'
        END AS Loan_Category
    FROM dbo.Financial_Loan_V1
)
SELECT 
    Loan_Category,
    COUNT(ID) AS Count_of_Applications
FROM Categorical_Performance
GROUP BY Loan_Category; 



