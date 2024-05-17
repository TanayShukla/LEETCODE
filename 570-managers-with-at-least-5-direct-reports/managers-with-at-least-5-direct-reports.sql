/*SELECT e.name
FROM Employee AS e 
INNER JOIN Employee AS m ON e.id=m.managerId 
GROUP BY m.managerId 
HAVING COUNT(m.managerId) >= 5*/
SELECT name FROM Employee
WHERE id in (select managerId from employee group by managerId having count(id) >= 5);