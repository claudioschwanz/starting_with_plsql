/*

                Views
                
    In SQL, a view is a virtual table based on the result-set of an SQL statement.
     A view contains rows and columns, just like a real table. The fields in 
     a view are fields from one or more real tables in the database.
    You can add SQL statements and functions to a view and present the data 
    as if the data were coming from one single table.

*/

create view employees_hierarchy as 
select emp.employee_Id, emp.first_name, emp.last_name,dep.department_name,nvl(mng.first_name,'BOSS') manager, emp.manager_id
from employees emp
    inner join departments dep
    on emp.department_Id = dep.department_id
    left join employees mng 
    on mng.employee_Id = emp.manager_id;