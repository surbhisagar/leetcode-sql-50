-- Problem: 577. Employee Bonus
-- Link: https://leetcode.com/problems/employee-bonus/
-- Difficulty: Easy
-- Topic: Basic Joins

-- Approach:
-- Return employee name and bonus for employees whose bonus is
-- either NULL or less than 1000. Since not every employee has a
-- bonus record, use LEFT JOIN from Employee to Bonus so employees
-- with no bonus row still appear (with NULL bonus).
select name , bonus
from employee as e
left join bonus as b 
on e.empid =b.empid
where b.bonus<1000 or bonus is  null;

-- Key concept: LEFT JOIN to keep unmatched rows, combined with
-- OR ... IS NULL to correctly include NULL values that would
-- otherwise be excluded by a plain "< 1000" comparison.
