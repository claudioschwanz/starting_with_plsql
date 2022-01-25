/*
        DQl – Data Query Language
        
        
*/
/*
        Min and Max
        
    With this commands we can return the minimum and the max value of a column. 
        
        
*/

select min(salary)
from hr.employees;
select max(salary)
from hr.employees;
/*
        Count, Avg and Sum
        
    With this commands we can return respectively, the count of the registers 
    returned from the query, the average value and the sum.
    
    Below we have some examples with the salary column.
        
        
*/
select count(*)
from hr.employees;
select avg(salary)
from hr.employees;
select sum(salary)
from hr.employees;



/*

                Exists command
                
    The EXISTS operator is used to test for the existence of any record in a subquery.

    The EXISTS operator returns TRUE if the subquery returns one or more records.
    
    For performance pourpose joins and exists are better than in statements.
*/

SELECT *
FROM EMPLOYEES a
WHERE EXISTS (SELECT *
              FROM JOB_HISTORY b
              WHERE b.EMPLOYEE_ID = a.EMPLOYEE_ID);

/*

                Between
                
    With the between command we can retrive registers filtering a column by
    a specific range, we can use it with dates;

*/
SELECT *
FROM  hr.employees
where hire_Date between '01-01-2005 00:00:00' and '01-01-2009 00:00:00'
order by hire_date desc;
/*

                in
                
    With the "in" command we can retrive registers filtering a column by
    a list of values.

*/
SELECT *
FROM  hr.employees
where job_id in ('SA_MAN','SH_CLERK');

-- We can also use a sub-select to return a range of values to use making it
-- dynamic.

select *
from hr.employees
where employee_Id in (select employee_Id from JOB_history);
/*

                Returning a specific number of rows, command rownum
                
    With the rownum command we can retrive a specific number of registers from
    the database.

*/
SELECT *
FROM  hr.employees
WHERE ROWNUM <= 5;

/*

                LIKE Condition,
                
    With the like command we can filter the data returning only registers that a 
    specific field start with a specific pattern, names that start with A for 
    example or that has some pattern like a phone number.

*/
SELECT *
FROM HR.EMPLOYEES
WHERE FIRST_NAME LIKE 'A%';
SELECT *
FROM HR.EMPLOYEES
WHERE FIRST_NAME LIKE '%o';
SELECT *
FROM HR.EMPLOYEES
WHERE FIRST_NAME LIKE 'A%o';
SELECT *
FROM HR.EMPLOYEES
WHERE phone_number LIKE '___.__.____.______'; 