-- Leetcode Problem 1193:     Monthly Transactions I


select 
 left(trans_date, 7) as month,  
 country,
 COUNT(id) as trans_count,
 SUM(if(state = 'approved', 1, 0)) as approved_count,
 SUM(amount) as trans_total_amount,
 SUM(if(state = 'approved', amount, 0)) as approved_total_amount 

 from Transactions

 GROUP BY month, country;
