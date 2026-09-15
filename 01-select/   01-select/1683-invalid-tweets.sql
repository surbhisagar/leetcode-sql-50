-- Problem: 1683. Invalid Tweets
-- Link: https://leetcode.com/problems/invalid-tweets/
-- Difficulty: Easy
-- Topic: Select

-- Approach:
-- A tweet is invalid if its content is longer than 15 characters.
-- Use LENGTH() to get the character count of the content column
-- and filter with a simple WHERE condition.
select tweet_id from tweets where length(content)>15;

-- Key concept: Using the LENGTH() string function inside WHERE
-- to filter rows based on string size.
