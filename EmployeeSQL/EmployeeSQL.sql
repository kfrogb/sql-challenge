-- Data Analysis Q1 Employee Salary Info
-- Selecting Employees table emp_no, first name, last name, and sex, and Salaries table - salary
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
left join salaries on 
employees.emp_no=salaries.emp_no;


-- Data Analysis Q2 Employees Hire date 1986
-- Selecting Employees table first name, last name, and hire date within 1986
Select first_name, last_name, hire_date
from employees
WHERE hire_date >= '1986-01-01' AND
      hire_date < '1987-01-01';


-- Data Analysis Q3 Manager Info
-- Selecting departments, dept_emp, dept_manager, employers tables to compile
SELECT dept_manager.emp_no, dept_emp.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name 
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
LEFT JOIN dept_manager ON dept_manager.dept_no = dept_emp.dept_no;



-- Data Analysis Q4 Dept number info
-- Selecting Dept_emp, employers, and departments to drill down to department DATA
SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no;

				
-- Data Analysis Q5 Hercules B
-- Selecting Employees table first name = Hercules & last name begins with B
Select first_name, last_name, sex
from employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- Data Analysis Q6 Sales Department data
-- Selecting Dept_emp, employers, and departments to filter to specific department data
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';


-- Data Analysis Q7 Sales & Development employee data
-- Selecting Dept_emp, employers, and departments to filter to specific department data
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');


-- Data Analysis Q8 Frequency Counts
-- Selecting employee last names descending order
SELECT last_name, COUNT(*) AS instance
FROM employees
GROUP BY last_name
HAVING COUNT(*) > 1
ORDER BY instance DESC;

