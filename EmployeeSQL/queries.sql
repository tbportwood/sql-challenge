SELECT E.emp_no, E.last_name, E.first_name, E.gender, S.salary FROM EMPLOYEES E JOIN SALARIES S ON E.emp_no = S.emp_no;

SELECT *
FROM EMPLOYEES
WHERE hire_date between '01/01/1986' and '12/31/1986';

SELECT DM.dept_no, D.dept_name, E.emp_no, E.last_name, E.first_name, DM.from_date, DM.to_date FROM DEPT_MANAGER DM
JOIN EMPLOYEES E ON DM.emp_no = e.emp_no
JOIN DEPARTMENT D ON DM.dept_no = D.dept_no;

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name FROM EMPLOYEES E
JOIN DEPT_EMP DE ON E.emp_no = DE.emp_no
JOIN DEPARTMENT D ON DE.dept_no = D.dept_no;

SELECT * FROM EMPLOYEES WHERE first_name = 'Hercules' and last_name like 'B%';

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name FROM EMPLOYEES E
JOIN DEPT_EMP DE on E.emp_no = DE.emp_no
JOIN DEPARTMENT D ON DE.dept_no = D.dept_no AND D.dept_name = 'Sales';

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name FROM EMPLOYEES E
JOIN DEPT_EMP DE on E.emp_no = DE.emp_no
JOIN DEPARTMENT D ON DE.dept_no = D.dept_no AND D.dept_name in ('Sales', 'Development');

SELECT last_name, count(*) FROM EMPLOYEES GROUP BY last_name ORDER BY count(*) desc;