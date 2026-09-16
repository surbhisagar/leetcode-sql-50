-- Problem: 1378. Replace Employee ID With The Unique Identifier
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- Difficulty: Easy
-- Topic: Basic Joins

-- Approach:
-- We need every employee's name along with their unique_id.
-- Not all employees have a unique_id, so an INNER JOIN would drop
-- those rows. LEFT JOIN keeps all employees and fills missing
-- unique_id values with NULL, which is exactly what's required.

select unique_id , name
from employees
left join employeeuni
on employees.id=employeeuni.id;

-- Key concept: LEFT JOIN preserves all rows from the left table,
-- filling unmatched right-table columns with NULL. Choosing
-- LEFT vs INNER JOIN depends on whether unmatched rows should
-- appear in the result.
