---1 employee number, last name, first name, gender, and salary.
select 
e.emp_no
,e.first_name
,e.last_name
,e.gender
,s.salary

from employees e
inner join salaries s on e.emp_no = s.emp_no
order by e.emp_no

-- 2 employees hired in 1986.

select * 
from employees
where hire_date between '01/01/1986' and '02/01/1987'

---3 manager of each department with the following information: 
---department number, department name, the manager's employee number, last name,
---first name, and start and end employment dates.

select d.dept_no
, d.dept_name
,e.emp_no
,e.last_name
,e.first_name
,de.from_date
,de.to_date
from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no

---4 Department of each employee with the following 
---information: employee number, last name, first name, and department name.

select e.emp_no
,e.last_name
,e.first_name
,d.dept_name
from employees e 
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no

---5 Employees whose first name is "Hercules" and last names begin with "B."
select * from employees e
where e.first_name = 'Hercules'
and e.last_name like 'B%';


---6. All employees in the Sales department, including their employee number, 
---last name, first name, and department name.

select e.emp_no
,e.last_name
,e.first_name
, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where d.dept_name = 'Sales'

---7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.


select e.emp_no
,e.last_name
,e.first_name
, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

---8. In descending order, list the frequency count of employee last names, 
---i.e., how many employees share each last name.

select 
e.last_name
,count(e.last_name) as last_name_count
from employees e
GROUP BY e.last_name
ORDER BY count(e.last_name) DESC




