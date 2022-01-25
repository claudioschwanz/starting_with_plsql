/*
                JOIN Command, INNER JOIN

        A JOIN clause is used to combine rows from two or more tables, based on
        a related column between them.
        
        INNER JOIN keyword select's records that have matching values in both 
        tables

*/

SELECT EMP.EMPLOYEE_iD, EMP.FIRST_NAME, HIS.JOB_ID, HIS.START_DATE, HIS.END_DATE
FROM EMPLOYEES EMP
    INNER JOIN JOB_HISTORY HIS
    ON EMP.EMPLOYEE_ID = HIS.EMPLOYEE_ID
ORDER BY 1 DESC,4 DESC;
/*
                JOIN Command, LEFT JOIN

        A JOIN clause is used to combine rows from two or more tables, based on
        a related column between them. 
        
                
        First example we bring all register from employees and also from job_history
        when it has.

        Second example we bring only data from job_history and the data related with
        the employee table.
*/

SELECT EMP.EMPLOYEE_iD, EMP.FIRST_NAME, HIS.JOB_ID, HIS.START_DATE, HIS.END_DATE
FROM EMPLOYEES EMP
    LEFT JOIN JOB_HISTORY HIS
    ON EMP.EMPLOYEE_ID = HIS.EMPLOYEE_ID
ORDER BY 1 DESC,4 DESC;

SELECT EMP.EMPLOYEE_iD, EMP.FIRST_NAME, HIS.JOB_ID, HIS.START_DATE, HIS.END_DATE
FROM JOB_HISTORY  HIS
    LEFT JOIN EMPLOYEES EMP
    ON EMP.EMPLOYEE_ID = HIS.EMPLOYEE_ID
ORDER BY 1 DESC,4 DESC;

/*
                JOIN Command, RIGHT JOIN 
        
        We can retrieve the same value using the Right keyword instead of
        inverting the tables on the select statement.
*/
 
SELECT EMP.EMPLOYEE_iD, EMP.FIRST_NAME, HIS.JOB_ID, HIS.START_DATE, HIS.END_DATE
FROM EMPLOYEES EMP
    RIGHT JOIN JOB_HISTORY HIS
    ON EMP.EMPLOYEE_ID = HIS.EMPLOYEE_ID
ORDER BY 1 DESC,4 DESC;
 
SELECT EMP.EMPLOYEE_iD, EMP.FIRST_NAME, HIS.JOB_ID, HIS.START_DATE, HIS.END_DATE
FROM EMPLOYEES EMP
    LEFT JOIN JOB_HISTORY  HIS
    ON EMP.EMPLOYEE_ID = HIS.EMPLOYEE_ID
ORDER BY 1 DESC,4 DESC;



/*
                JOIN Command, FULL OUTER JOIN 
        
        We can retrieve the data from both tables, FULL JOIN does the same.
*/
 
SELECT EMP.EMPLOYEE_iD, EMP.FIRST_NAME, HIS.JOB_ID, HIS.START_DATE, HIS.END_DATE
FROM JOB_HISTORY HIS
    FULL JOIN EMPLOYEES EMP
    ON EMP.EMPLOYEE_ID = HIS.EMPLOYEE_ID
ORDER BY 1 DESC,4 DESC;
 
SELECT EMP.EMPLOYEE_iD, EMP.FIRST_NAME, HIS.JOB_ID, HIS.START_DATE, HIS.END_DATE
FROM EMPLOYEES EMP
    FULL JOIN JOB_HISTORY  HIS
    ON EMP.EMPLOYEE_ID = HIS.EMPLOYEE_ID
ORDER BY 1 DESC,4 DESC;


/*
                JOIN Command, SELF JOIN
        
        Is a select statement on the same table
*/
 
SELECT *
FROM JOB_HISTORY HIS
    , JOB_HISTORY HIS2 
WHERE HIS2.EMPLOYEE_ID = HIS.EMPLOYEE_ID
AND HIS.JOB_ID <> HIS2.JOB_ID
ORDER BY 1 DESC;
  
