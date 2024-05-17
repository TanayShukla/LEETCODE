/*SELECT *
FROM (
        SELECT v.customer_id , COUNT(v.visit_id) AS count_no_trans FROM Visits v
        LEFT JOIN Transactions t
        on v.visit_id = t.visit_id
        WHERE t.visit_id IS NULl
        GROUP BY customer_id
    )AS Xyz
*/

/*
SELECT v.customer_id, COUNT(t.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id;
*/

/* Write your T-SQL query statement below */
select v.customer_id,count(v.visit_id)as count_no_trans from Visits v left  join Transactions t on v.visit_id =t.visit_id where t.transaction_Id is null group by customer_id;