-- Find the total sales for each product
SELECT ProductID, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY ProductID;


-- Calculate the total sales for each month
SELECT 
    EXTRACT(YEAR FROM SaleDate) AS SaleYear,
    EXTRACT(MONTH FROM SaleDate) AS SaleMonth,
    SUM(Amount) AS TotalSales
FROM Sales
GROUP BY SaleYear, SaleMonth
ORDER BY SaleYear, SaleMonth;



-- Identify customers who made more than 5 purchases
SELECT CustomerID, COUNT(SaleID) AS PurchaseCount
FROM Sales
GROUP BY CustomerID
HAVING COUNT(SaleID) > 5;
