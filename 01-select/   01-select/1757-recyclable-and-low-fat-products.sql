-- Problem: 1757. Recyclable and Low Fat Products
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/
-- Difficulty: Easy
-- Topic: Select

-- Approach:
-- Filter rows where both low_fats and recyclable columns equal 'Y'

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';

-- Key concept: Combining multiple conditions in WHERE using AND
