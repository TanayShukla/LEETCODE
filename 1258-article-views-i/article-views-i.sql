/* Write your T-SQL query statement below */
/*SELECT DISTINCT(author_id)  AS id
FROM Views
WHERE viewer_id = author_id AND viewer_id >=1
ORDER BY id ASC */


select distinct
    author_id as id
from
    views
where
    author_id = viewer_id
order by
    author_id    