/*

                Anonymous block's, procedures and functions

    An anonymous blcok is a block of code that can perform any modification 
    on the database since it has the necessary grant's.
    
    It has the same structure of a stored procedure but it's not compiled
    and it can't be called.
    
    A procedure is a code that is compiled and be executed only using it's name
    and we can also pass parameters and can return or not values from it, 
    
    A function must always return a value, we can execute any procedure inside
    a function but at the end of the function we must return some value, can be 
    an ok or error message.
    

*/
set SERVEROUTPUT ON
Declare --(Only if you are working with variables and cursors)

    
    cursor c_names is
    select first_name
    from employees;
    
    v_name varchar2(50);

Begin 
 
    for r1 in c_names loop
        
        v_name := r1.first_name;
        DBMS_OUTPUT.PUT_LINE('Nome: '||v_name);
    
    end loop;


end; --Begining of the bloc


/*

            Procedures

*/
--Compile the procedure code
CREATE OR REPLACE PROCEDURE greetings( in_employee_Id integer)
AS  

     v_name varchar2(50);
    
BEGIN 
    
    select first_name||' '||last_name into v_name from employees 
    where employee_id = in_employee_Id;
        
   dbms_output.put_line('Hello '||v_name||' !!!'); 
END; 
-- Than execute the procedure using a parameter.
begin
    greetings(105);
end;

/*

            Functions

*/
--Execute the code to compile it
CREATE OR REPLACE FUNCTION totalEmployees 
RETURN number IS 
   total number := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM employees; 
    
   RETURN total; 
END; 
--Then execute the function;

select totalEmployees() from dual;