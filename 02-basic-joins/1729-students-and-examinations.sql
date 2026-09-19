-- Problem: 1729. Students and Examinations
-- Link: https://leetcode.com/problems/students-and-examinations/
-- Difficulty: Easy
-- Topic: Basic Joins

-- Approach:
-- We need every (student, subject) combination to appear in the
-- result, even if that student never attended that subject's exam.
-- CROSS JOIN Students with Subjects generates all possible pairs.
-- Then LEFT JOIN Examinations on matching student_id + subject_name
-- to count actual attempts. COUNT(e.subject_name) only counts
-- non-NULL matches, correctly giving 0 for subjects never attended.

select st.student_id,st.student_name,su.subject_name, count(e.subject_name) as attended_exams
from students as st
join subjects as su
left join examinations as e
on st.student_id=e.student_id and su.subject_name=e.subject_name
group by st.student_id, su.subject_name
order by student_id,subject_name;

-- Key concept: CROSS JOIN to generate all combinations of two
-- tables (student × subject), then LEFT JOIN to bring in actual
-- data while preserving pairs with zero matches. Note: all
-- non-aggregated SELECT columns must appear in GROUP BY under
-- MySQL's default ONLY_FULL_GROUP_BY mode.
