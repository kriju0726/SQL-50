-- Leetcode Problem 1378:   replace-employee-id-with-the-unique-identifier

#select eu.unique_id, e.name
#from Employees e
#LEFT JOIN EmployeeUNI eu
#ON eu.id = e.id
#ORDER BY e.id;



select eu.unique_id, e.name
from EmployeeUNI eu
RIGHT JOIN Employees e
ON eu.id = e.id
ORDER BY e.id;






