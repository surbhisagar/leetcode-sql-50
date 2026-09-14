-- Problem: 584. Find Customer Referee
-- Link: https:https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Topic: Select

-- Approach:
-- Return customers whose referee_id is not 2.
-- Must also include customers where referee_id is NULL,
-- since NULL != 2 evaluates to NULL (not TRUE) in SQL,
-- so we explicitly handle NULLs with OR referee_id IS NULL.

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;

-- Key concept: NULL handling in comparisons — NULL is never
-- equal or unequal to anything, so it must be checked separately
-- using IS NULL / IS NOT NULL.
