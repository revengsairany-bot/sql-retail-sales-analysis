-- Revenue by Country
SELECT 
    Country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM retail
GROUP BY Country
ORDER BY revenue DESC;

-- Top Customers by Revenue
SELECT 
    CustomerID,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM retail
GROUP BY CustomerID
ORDER BY revenue DESC
LIMIT 10;
