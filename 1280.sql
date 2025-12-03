-- Leetcode Problem 1280:    Students Who May Not Attend the Exam

select s.student_id, s.student_name, sub.subject_name, 
        COUNT(e.subject_name) as attended_exams
from Students s
cross join Subjects sub
left join Examinations e
on s.student_id = e.student_id
and e.subject_name = sub.subject_name
group by s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;




