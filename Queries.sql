-- ============================================================
-- Project 3: SQL Data Analysis
-- DecodeLabs Data Analytics Internship
-- Dataset: orders (e-commerce transactions, 1,200 rows)
-- ============================================================

-- Q1: Revenue and order count by product
-- Demonstrates: GROUP BY, aggregation (COUNT, SUM, AVG), ORDER BY
SELECT Product,
       COUNT(*) AS OrderCount,
       SUM(TotalPrice) AS TotalRevenue,
       ROUND(AVG(TotalPrice), 2) AS AvgOrderValue
FROM orders
GROUP BY Product
ORDER BY TotalRevenue DESC;

-- Q2: High-value orders (TotalPrice >= 3000)
-- Demonstrates: WHERE (comparison filter), ORDER BY
SELECT OrderID, Product, TotalPrice, OrderStatus
FROM orders
WHERE TotalPrice >= 3000
ORDER BY TotalPrice DESC;

-- Q3: Delivered orders, revenue by payment method
-- Demonstrates: WHERE + GROUP BY together
SELECT PaymentMethod,
       COUNT(*) AS DeliveredOrders,
       SUM(TotalPrice) AS Revenue
FROM orders
WHERE OrderStatus = 'Delivered'
GROUP BY PaymentMethod
ORDER BY Revenue DESC;

-- Q4: Product categories with an average order value above $1,000
-- Demonstrates: HAVING (filtering on an aggregated result)
SELECT Product, ROUND(AVG(TotalPrice), 2) AS AvgOrderValue, COUNT(*) AS Orders
FROM orders
GROUP BY Product
HAVING AVG(TotalPrice) > 1000
ORDER BY AvgOrderValue DESC;

-- Q5: Revenue by referral source for orders that used a coupon
-- Demonstrates: WHERE with IS NOT NULL, GROUP BY
SELECT ReferralSource,
       COUNT(*) AS OrdersWithCoupon,
       SUM(TotalPrice) AS Revenue
FROM orders
WHERE CouponCode IS NOT NULL
GROUP BY ReferralSource
ORDER BY Revenue DESC;

-- Q6: Monthly order count and revenue trend
-- Demonstrates: GROUP BY on a derived date field, ORDER BY
SELECT strftime('%Y-%m', Date) AS Month,
       COUNT(*) AS Orders,
       SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Month
ORDER BY Month;
