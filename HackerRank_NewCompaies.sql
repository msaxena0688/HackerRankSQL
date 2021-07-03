--Problem Statement
--write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.
--https://www.hackerrank.com/challenges/the-company/problem


select cmp.company_code,cmp.founder,count(distinct lm.lead_manager_code),count(distinct sm.senior_manager_code),count(distinct mg.manager_code),count(distinct emp.employee_code) from
company cmp inner join lead_manager lm on cmp.company_code=lm.company_code
inner join senior_manager sm on  sm.lead_manager_code=lm.lead_manager_code
inner join manager mg on mg.senior_manager_code=sm.senior_manager_code
inner join employee emp  on   mg.manager_code=emp.manager_code
group by cmp.company_code,cmp.founder
order by cmp.company_code
