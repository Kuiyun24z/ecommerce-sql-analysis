#data cleaning
delete from retail where CustomerID is null or Quantity <= 0 or UnitPrice <=0;

select count(*) from retail;

#total revenue
select sum(Quantity * UnitPrice) total_revenue from retail;

#monthly revenue trend
SELECT
    DATE_FORMAT(
        STR_TO_DATE(InvoiceDate, '%m/%d/%y %H:%i'),
        '%Y-%m'
    ) AS month,
    SUM(Quantity * UnitPrice) AS revenue
FROM retail
GROUP BY month
ORDER BY month;

#Top customers
SELECT
    CustomerID,
    SUM(Quantity * UnitPrice) AS total_spent
FROM retail
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;

#repeat customers
SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS order_count
FROM retail
GROUP BY CustomerID
HAVING order_count > 1
ORDER BY order_count DESC;

#RFM Segmentation
WITH rfm AS (
    SELECT
        CustomerID,
        MAX(InvoiceDate) AS last_purchase,
        COUNT(DISTINCT InvoiceNo) AS frequency,
        SUM(Quantity * UnitPrice) AS monetary
    FROM retail
    GROUP BY CustomerID
)

SELECT *
FROM rfm
ORDER BY monetary DESC
LIMIT 20;