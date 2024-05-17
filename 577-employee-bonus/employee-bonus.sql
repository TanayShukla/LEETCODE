/* Write your T-SQL query statement below 
SELECT E.name AS [name] , B.Bonus AS bonus
FROM Employee E
LEFT JOIN Bonus B
ON E.empId = B.empId
Where B.bonus < 1000 OR B.bonus IS NULL
ORDER BY bonus DESC;
*/
/* Write your T-SQL query statement below */
SELECT name, bonus
FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE ISNULL(Bonus, 0) < 1000