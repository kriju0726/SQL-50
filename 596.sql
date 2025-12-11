-- Leetcode Problem 596: Classes with atleast 5 Students

select class
from Courses
group by class
having count(student) >= 5;



