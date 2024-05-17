select e1.name from employee e1 join employee e2
on e1.id=e2.managerId
group by e2.managerId,e1.name
having count(e2.managerId)>=5
/*
SELECT name FROM Employee
WHERE id in (select managerId from employee group by managerId having count(id) >= 5);*/