-- Leetcode Prob:1075       Projects-Employees --- IGNORE ---


select p.project_id, 
ROUND(SUM(e.experience_years) / COUNT(*), 2) as average_years
from Project p
left join Employee e
on e.employee_id = p.employee_id
group by p.project_id;


