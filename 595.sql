-- Leetcode Problem 595:    Big Countries
select name, area, population 
from World
where area >= 3000000 OR population >= 25000000;