-- Leetcode Prob:570    managers-with-at-least-5-direct-reports

select name 
from Employee
where id IN (select managerId
            from Employee
            GROUP BY managerId 
            HAVING COUNT(*) >= 5);
