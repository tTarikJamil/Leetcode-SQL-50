select name,bonus
from Employee as e
left join Bonus as b
on e.empID = b.empID
where bonus < 1000 or bonus is NULL