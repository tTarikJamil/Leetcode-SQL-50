select stu.student_id,student_name,sub.subject_name,count(ex.subject_name) as attended_exams
from Students as stu
cross join Subjects as sub
left join Examinations as ex
on sub.subject_name = ex.subject_name
and stu.student_id = ex.student_id
group by stu.student_id,student_name,sub.subject_name