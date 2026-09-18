-- Problem: 1661. Average Time of Process per Machine
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine/
-- Difficulty: Easy
-- Topic: Basic Joins

-- Approach:
-- Each process has an 'start' and 'end' activity_type row with the
-- same machine_id and process_id but different timestamps. Self-join
-- the table on machine_id + process_id, pairing 'start' rows with
-- 'end' rows, then compute (end_time - start_time) per process and
-- average that per machine.

select a1.machine_id,
 round(avg(a2.timestamp-a1.timestamp),3) as processing_time
from activity a1 
join activity a2 
 on a1.machine_id=a2.machine_id
 and a1.activity_type='start'
 and a2.activity_type='end'
group by a1.machine_id;

-- Key concept: Self-join with multiple ON conditions to pair
-- related rows (start/end) within the same table, combined with
-- AVG() and GROUP BY for per-machine aggregation. ROUND() formats
-- the result to 3 decimal places as required by the problem.
