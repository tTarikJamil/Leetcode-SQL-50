select project_id, round(avg(experience_years),2) as average_years
from Project as p
left join Employee as emp
on p.employee_id = emp.employee_id
group by project_id