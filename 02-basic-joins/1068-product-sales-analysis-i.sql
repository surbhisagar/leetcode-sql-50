-- Problem: 1068. Product Sales Analysis I
-- Link: https://leetcode.com/problems/product-sales-analysis-i/
-- Difficulty: Easy
-- Topic: Basic Joins

-- Approach:
-- The Sales table has product_id, year, and price, but not the
-- product name. Join Sales with Product on product_id to pull in
-- product_name. INNER JOIN is fine here since we only care about
-- products that actually have sales records.

select product_name,year,price from sales
left join product on sales.product_id=product.product_id;

-- Key concept: INNER JOIN to combine columns from two related
-- tables using a shared foreign key (product_id). Table aliases
-- (s, p) keep the query readable.
