-- Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- Difficulty: Easy
-- Topic: Basic Joins

-- Approach:
-- Find visits that have no matching transaction_id in Transactions.
-- Use LEFT JOIN from Visits to Transactions, then filter for rows
-- where the transaction side is NULL (no match found). Group by
-- customer_id to count how many such "empty" visits each customer had.

select customer_id, count(*) as count_no_trans
from visits as v 
left join transactions as t
on v.visit_id=t.visit_id
where t.visit_id is null 
group by customer_id;

-- Key concept: LEFT JOIN + WHERE ... IS NULL is the standard
-- pattern for finding "rows with no match" (anti-join). Combined
-- here with GROUP BY and COUNT to aggregate per customer.
