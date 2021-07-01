--Problem Statement
--Write a query to extract the highest earning salary and count of employee ID with highest earnings.
--https://www.hackerrank.com/challenges/earnings-of-employees/problem


select salary*months as earnings,count(employee_id) from employee group by earnings having earnings=
(select max(months*salary) from employee);