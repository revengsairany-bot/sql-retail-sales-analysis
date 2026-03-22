-- =========================
-- 1. Revenue by Country
-- =========================
SELECT 
    Country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM retail
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;


-- =========================
-- 2. Top Customers by Revenue
-- =========================
SELECT 
    CustomerID,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY revenue DESC
LIMIT 10;


-- =========================
-- 3. Monthly Revenue Trend
-- =========================
SELECT 
    '20' || substr(
        InvoiceDate,
        instr(InvoiceDate, '/') + instr(substr(InvoiceDate, instr(InvoiceDate, '/') + 1), '/') + 1,
        2
    )
    || '-' ||
    printf('%02d', CAST(substr(InvoiceDate, 1, instr(InvoiceDate, '/') - 1) AS INTEGER)) AS month,


    -- =========================
-- 4. Top Products by Revenue
-- =========================
SELECT 
    Description,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM retail
WHERE Description IS NOT NULL
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;


    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue

FROM retail
GROUP BY month
ORDER BY month;
