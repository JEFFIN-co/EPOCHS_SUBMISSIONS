
-- ===========================================
-- Assignment 2 - Northwind SQL Analysis
-- ===========================================

------------------------------------------------
-- 1. Top 10 Selling Products
------------------------------------------------
SELECT
    p.ProductName,
    SUM(od.Quantity) AS Total_Quantity_Sold,
    ROUND(SUM(od.Quantity * od.UnitPrice),2) AS Total_Revenue
FROM "Order Details" od
JOIN Products p
ON od.ProductID = p.ProductID
GROUP BY p.ProductID
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;


------------------------------------------------
-- 2. Top 10 Customers by Revenue
------------------------------------------------
SELECT
    c.CompanyName,
    ROUND(SUM(od.Quantity * od.UnitPrice),2) AS Revenue
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN "Order Details" od
ON o.OrderID = od.OrderID
GROUP BY c.CustomerID
ORDER BY Revenue DESC
LIMIT 10;


------------------------------------------------
-- 3. Monthly Sales Trends
------------------------------------------------
SELECT
    strftime('%Y-%m', o.OrderDate) AS Month,
    ROUND(SUM(od.Quantity * od.UnitPrice),2) AS Sales
FROM Orders o
JOIN "Order Details" od
ON o.OrderID = od.OrderID
GROUP BY Month
ORDER BY Month;


------------------------------------------------
-- 4. Best Performing Product Categories
------------------------------------------------
SELECT
    c.CategoryName,
    ROUND(SUM(od.Quantity * od.UnitPrice),2) AS Revenue
FROM Categories c
JOIN Products p
ON c.CategoryID = p.CategoryID
JOIN "Order Details" od
ON p.ProductID = od.ProductID
GROUP BY c.CategoryID
ORDER BY Revenue DESC;


------------------------------------------------
-- 5. Customer Purchase Frequency
------------------------------------------------
SELECT
    c.CompanyName,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY TotalOrders DESC;
