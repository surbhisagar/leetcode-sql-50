-- Problem: 570. Managers with at Least 5 Direct Reports
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Medium
-- Topic: Advanced Select and Joins

-- Approach:
-- Self-join Employee to itself: alias 'e' represents each report,
-- alias 'm' represents that report's manager (matched via
-- e.managerId = m.id). Group by managerId so each group represents
-- one manager's set of direct reports, then use HAVING to keep
-- only managers with 5 or more reports.

select m.name 
from employee as e 
inner join employee as m 
on e.managerId=m.id
group by e.managerId
having count(e.id)>=5

-- Key concept: Self-join to model a manager-employee hierarchy
-- within a single table, combined with GROUP BY + HAVING to
-- filter aggregated groups (as opposed to WHERE, which filters
-- rows before aggregation).
