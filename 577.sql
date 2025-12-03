-- Leetcode Problem 577:    Employee Bonus

select e.name, b.bonus
from Employee AS e
left join Bonus b
ON e.empId = b.empId
where b.bonus < 1000 or b.bonus is null;

