-- Problem: 197. Rising Temperature
-- Link: https://leetcode.com/problems/rising-temperature/
-- Difficulty: Easy
-- Topic: Basic Joins

-- Approach:
-- Find all dates where the temperature was higher than the
-- previous day's temperature. This requires comparing each row
-- to another row exactly one day earlier — done via a self-join
-- on the same Weather table, matching w2.recordDate to the day
-- before w1.recordDate using DATEDIFF.

select w1.id
from weather w1 join weather w2 
on datediff(w1.recorddate, w2.recorddate)=1
where w1.temperature>w2.temperature;

-- Key concept: Self-join — joining a table to itself to compare
-- rows against each other. DATEDIFF() checks the exact day gap
-- between two dates, which is safer than assuming consecutive
-- primary key ids represent consecutive days.
