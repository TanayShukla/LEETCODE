/*SELECT              s.user_id,
ROUND(CAST(COUNT(CASE WHEN action = 'confirmed' THEN 1 ELSE NULL END) AS FLOAT) / COUNT(*), 2) as confirmation_rate
FROM                Signups s
LEFT JOIN     Confirmations c
ON                  s.user_id = c.user_id
GROUP BY            s.user_id
*/
/* Write your T-SQL query statement below */
SELECT s.user_id, ISNULL(ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1.0 ELSE 0.0 END), 2.0), 0.0) AS confirmation_rate
FROM (
    SELECT DISTINCT user_id
    FROM Signups
    UNION
    SELECT DISTINCT user_id
    FROM Confirmations
) AS s
LEFT JOIN Confirmations AS c
ON s.user_id = c.user_id
GROUP BY s.user_id