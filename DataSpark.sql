SELECT * FROM records.customer_records;
-- total customers
SELECT COUNT(*)
FROM records.customer_records;

-- Male Female Counts
SELECT gender,count(*) AS count
FROM records.customer_records
WHERE gender IN ('Male','Female')
GROUP BY gender
COMMIT;
--  Counts country
SELECT country,count(*) AS count
FROM records.customer_records
GROUP BY country


SELECT * FROM records.product_records;

-- count of catogories
SELECT Category,count(*) AS count
FROM records.product_records
GROUP BY Category

-- count of sub-catogories
SELECT Subcategory,count(*) AS count
FROM records.product_records
GROUP BY Subcategory

-- count of Brands
SELECT Brand,count(*) AS count
FROM records.product_records
GROUP BY Brand
COMMIT;

SELECT * FROM records.product_records;

-- DIFFERENCE BITWEEN UNIT PRICE & UNIT COST
SELECT Unit_Cost_USD, Unit_Price_USD, (Unit_Price_USD - Unit_Cost_USD) AS difference
FROM records.product_records;

-- count of Color
SELECT Color,count(*) AS count
FROM records.product_records
GROUP BY Color


ALTER TABLE records.sales_records
MODIFY Order_Date DATE;

ALTER TABLE records.sales_records
MODIFY Delivery_Date DATE;


SELECT Order_Date, Delivery_Date, (Delivery_Date - Order_Date) AS difference
FROM records.sales_records;

select*from records.sales_records;
