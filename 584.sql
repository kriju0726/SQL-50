-- Leetcode Problem 584:    Find Customers Who Refereed Others
select name from Customer
where referee_id <> 2 OR referee_id IS NULL;