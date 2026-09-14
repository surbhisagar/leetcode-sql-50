-- Problem: 595. Big Countries
-- Link: https://leetcode.com/problems/big-countries/
-- Difficulty: Easy
-- Topic: Select

-- Approach:
-- A country is "big" if area >= 3,000,000 OR population >= 25,000,000.
-- Simple OR condition in WHERE — no join needed since all data
-- is in a single table.

SELECT name , population , area 
FROM world
WHERE area>=3000000 OR population>=25000000;

-- Key concept: Using OR to combine independent filter conditions
-- on numeric columns.
