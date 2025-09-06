select d.name as Department,emp1.name as Employee,salary
from Employee as emp1
left join Department as d
on emp1.departmentId = d.id
where 3 > (select count(distinct salary) from Employee as emp2 where emp1.departmentId = emp2.departmentId and emp1.salary < emp2. salary )