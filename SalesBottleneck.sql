CREATE DATABASE SalesDB;
USE SalesDB;

SELECT * FROM RegionalSales2025;

-- 1. Monthly Sales Trend
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(TotalAmount) AS TotalSales
FROM RegionalSales2025
WHERE OrderStatus = 'Completed'
GROUP BY Month
ORDER BY Month;

-- 2. Canceled & Return % orders per region
SELECT Region, COUNT(*) AS TotalOrders,
    ROUND(SUM(CASE WHEN OrderStatus = 'Cancelled' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS Cancel_Percentage,
    ROUND(SUM(CASE WHEN OrderStatus = 'Returned' THEN 1 ELSE 0 END)*100/COUNT(*),2) AS Return_Percentage
FROM RegionalSales2025
GROUP BY Region;

-- 3. Revenue Loss
SELECT Region, SUM(TotalAmount) AS RevenueLoss
FROM RegionalSales2025
WHERE OrderStatus IN ('Cancelled', 'Returned')
GROUP BY Region
ORDER BY RevenueLoss DESC
LIMIT 3;

-- 4. Average Order Value 
SELECT Category, AVG(TotalAmount) AS AvgOrderValue
FROM RegionalSales2025
WHERE OrderStatus = 'Completed'
GROUP BY Category;

-- 5. Top 5 Sales Agents
SELECT SalesAgent, SUM(TotalAmount) AS TotalRevenue
FROM RegionalSales2025
WHERE OrderStatus = 'Completed'
GROUP BY SalesAgent
ORDER BY TotalRevenue DESC
LIMIT 5;

-- 6. Category Contribution
SELECT Category, SUM(TotalAmount) AS CategorySales,
    SUM(TotalAmount) * 100.0 / 
        (SELECT SUM(TotalAmount) FROM RegionalSales2025 WHERE OrderStatus='Completed') 
        AS ContributionPercent
FROM RegionalSales2025
WHERE OrderStatus = 'Completed'
GROUP BY Category;

-- 7. Customers with High Returns
SELECT CustomerID, COUNT(*) AS ReturnCount
FROM RegionalSales2025
WHERE OrderStatus = 'Returned'
GROUP BY CustomerID
HAVING COUNT(*) >= 3;