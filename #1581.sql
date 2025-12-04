-- Leetcode Prob1581:   customer-who-visited-but-did-not-make-any-transactions

-- select v.customer_id, COUNT(*) AS count_no_trans
-- from Visits v
-- left join Transactions t
-- ON v.visit_id = t.visit_id
-- where t.visit_id is NULL
-- group by v.customer_id

-- order by count_no_trans DESC;


select v.customer_id, COUNT(*) AS count_no_trans
from Transactions t
right join Visits v
ON v.visit_id = t.visit_id
where t.visit_id is NULL
group by v.customer_id

order by count_no_trans DESC;


