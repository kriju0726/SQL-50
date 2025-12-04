-- Leetcode Prob:620    not-boring-movies --- IGNORE ---

select id, movie, description, rating
from Cinema
where id%2=1 AND description != 'boring'
order by rating DESC;



