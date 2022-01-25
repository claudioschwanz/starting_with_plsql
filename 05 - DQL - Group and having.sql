/*

                GROUP BY

    With the group by command we can distinct the results of our query by 
    grouping them as we specified it, remember, the group by must contain the
    same values of the fields selected that are not inside functions, with 
    those result's grouped we can also use functions to get, the average, 
    sum, count, max, min of the grouped results, see the example below.
*/

select job_id, count(*)
from job_history
group by  job_id;

/*

            HAVING
            
    With the HAVING command we can filter the data using conditions on the 
    grouped data, we can use it only with grouped data.

    This command is usually used to identify duplicated data, as the example
    below.
    
    We can also add diferent functions and conditions.
*/

select job_id, count(*)
from job_history
group by  job_id
having count(*) > 1;

select job_id, max(start_date)
from job_history
group by  job_id
having max(start_date) > '17-02-2004 00:00:00' ;