/* Write your T-SQL query statement below */
SELECT DISTINCT(author_id)  AS id
FROM Views
WHERE viewer_id = author_id AND viewer_id >=1
ORDER BY id ASC