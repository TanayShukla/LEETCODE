/* Write your T-SQL query statement below */
SELECT C.* FROM Cinema C
WHERE C.id%2 <> 0 AND C.description NOT LIKE 'boring'
ORDER BY C.rating DESC;