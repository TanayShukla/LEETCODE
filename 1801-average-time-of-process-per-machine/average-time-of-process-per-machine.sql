/* Write your T-SQL query statement below 
SELECT A1.machine_id, ROUND(AVG(A2.timestamp-A1.timestamp),3)AS processing_time
FROM Activity A1
INNER JOIN Activity A2
ON A1.machine_id = A2.machine_id
AND A1.process_id = A2.process_id
AND A1.timestamp < A2.timestamp
GROUP BY A1.machine_id*/
/* Write your T-SQL query statement below */
select a.machine_id,
round(avg(b.timestamp - a.timestamp),3) as processing_time
from activity a, activity b
where a.machine_id = b.machine_id
and a.process_id = b.process_id
and a.activity_type = 'start'
and b.activity_type = 'end'
group by a.machine_id