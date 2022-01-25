/*

            Case, Null values functions

*/ 
SELECT FIRST_NAME,SALARY,
        NVL(to_char(COMMISSION_PCT),'Sem Comissão') Comissão,
        CASE 
        WHEN SALARY < 1900 THEN 'Isento'
        WHEN (SALARY > 1900 AND SALARY < 2800) THEN '7,5%'
        WHEN SALARY BETWEEN 2800 AND 3800 THEN '15%'
        WHEN SALARY BETWEEN 3800 AND 4700 THEN '22,5%'
        WHEN SALARY > 4700 THEN '27%'
        END IRRF,
        DEPARTMENT_ID,
        DECODE(DEPARTMENT_ID,
                10,	'Administration',
                20,	'Marketing',
                30,	'Purchasing',
                40,	'Human Resources',
                50,	'Shipping',
                60,	'IT',
                70,	'Public Relations',
                80,	'Sales',
                90,	'Executive',
                'Other') DEPARTMENT                
FROM EMPLOYEES 
--we can also use case to determine the order of the results, 
-- in this example we ordered by first the department IT the 
-- we continued ordering by the first name
order by case department_id 
            when 60 then '0' 
            else '1' 
        end,
        first_name;
 