/*

                DML – Data Manipulation Language
    
    DML statements are used for managing data with in schema objects.
    
    INSERT: insert data into a table
    UPDATE: update existing data within a table
    DELETE: deletes all records from a table, space for the records remain

*/
/*

                INSERT
    
    There are more than one way to insert data into a table, you'll see
    some examples.
    
*/
--specifying columns and values
insert into t_zone(zone_Id,ZONE,USER_COUNT,DESCRIPTION,LAST_COUNT)
values (SEQ_ZONE_LOCA_ID.nextval,'CX_ALL',0,'Test Zone',sysdate);

--We can also insert data using a select statement
insert into T_location(LOCATION_ID,ZONE,USER_COUNT,DESCRIPTION,LAST_COUNT)
select   FIRST_NAME||' '||last_name,'ALL',0,FIRST_NAME||' Fork',sysdate 
from employees
where department_id = '50'; 
/*
                UPDATE: update existing data within a table
*/
update t_location set last_count = sysdate - 10 where location_Id = 'Anthony Cabrio';


/*
                Delete: update existing data within a table
*/
delete t_location where location_Id = 'Anthony Cabrio';
 