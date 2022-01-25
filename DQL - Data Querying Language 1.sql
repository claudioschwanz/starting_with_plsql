/*
        DQl – Data Query Language
        
        DQL statements allow us to retrive data from the database and then
        perform operations with it.
        
        DQL has only the SELECT statement and there are others commands and 
        functions to work with them.
*/
/*

                SELECT

*/
SELECT
    *
FROM
    hr.employees;

/*

                DISTINCT COMMAND

    With this command we can return only one line of the results if there
    are repeated values, as we are going to see with the example below with
    the JOB_ID column.
*/
SELECT DISTINCT
    job_id
FROM
    hr.employees;

/*
                WHERE CLAUSE
                
    With these clause we can filter the data that is returned from the select
    statement, there is also a example of a query using this clause below.
    

*/
SELECT
    *
FROM
    hr.employees
WHERE
    job_id = 'SH_CLERK';

/*
                CONDITIONAL OPERATORS
                
    As we can see, the query return all employees of JOB_ID SH_CLERK, we can
    also add more conditions and conditional operatores as AND, OR  as the 
    example below.
    
*/

SELECT
    *
FROM
    hr.employees
WHERE
    job_id = 'SH_CLERK'
    OR job_id = 'ST_CLERK';

/*
                CONDITIONAL OPERATORS
                

    Take very much care with OR conditions, this operator must be used with 
    a lot of caution, the missuse of it can cause a huge catastrophe.
    
    As the example, if our intention was the conditions below:
    The employees with salary > 3000 and job_id SH_CLERK or ST_CLERK
    
    The miss use of the or condition brought to us unwanted registers, as
    we have didn't specified it better it returned employees with salary's below
    3000.
*/

SELECT
    *
FROM
    hr.employees
WHERE
        salary > 3000
    AND job_id = 'SH_CLERK'
    OR job_id = 'ST_CLERK';
    

/* 

            CONDITIONAL OPERATORS

    To fix it, we must use parentheses characteres after the and condition with
    with the two options, or more.
    
    Now if we run this query it will return only employees with salaries higher
    than 3000 from those two departments.
*/

SELECT
    *
FROM
    hr.employees
WHERE salary > 3000
    AND ( job_id = 'SH_CLERK'
    OR job_id = 'ST_CLERK');


/* 

            ORDER BY
            
    With the order by command we can order the results ascending (asc)
    or descending (desc).
    
*/

SELECT
    *
FROM
    hr.employees
WHERE salary > 3000
    AND ( job_id = 'SH_CLERK'
    OR job_id = 'ST_CLERK')
order by first_name desc;

/*

                NULL Values
    
   The conditional operation with null values is very specific, we can use
   the equal sign = to compare a null value, for null values we must use is null
   and is not null to compare them.

*/


SELECT
    *
FROM
    hr.employees
where commission_pct is not null;