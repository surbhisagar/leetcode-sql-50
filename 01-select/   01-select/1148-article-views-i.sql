-- Problem: 1148. Article Views I
-- Link: https://leetcode.com/problems/article-views-i/
-- Difficulty: Easy
-- Topic: Select

-- Approach:
-- Find all authors who viewed at least one of their own articles
-- (author_id = viewer_id). Use DISTINCT since an author may have
-- viewed their own articles multiple times, and we only want
-- each id once. Result should be sorted by id ascending.

select distinct author_id as id
from views
where author_id=viewer_id
order by id;

-- Key concept: DISTINCT to remove duplicate rows, self-referential
-- column comparison (author_id = viewer_id), and ORDER BY for
-- deterministic output.
