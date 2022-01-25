/*

            DDL - Constraints
            
            SQL constraints are used to specify rules for the data in a table,
            also used to limit the type of data that can go into a 
            table. This ensures the accuracy and reliability of the data in the 
            table. If there is any violation between the constraint and the data 
            action, the action ends up with a constraint violation error.
            
            
            NOT NULL - Ensures that a column cannot have a NULL value
            UNIQUE - Ensures that all values in a column are different
            PRIMARY KEY - A combination of a NOT NULL and UNIQUE. 
            Uniquely identifies each row in a table
            FOREIGN KEY - Prevents actions that would destroy links 
            between tables, like deleting a primary key that has dependent 
            records in a another table.
            DEFAULT - Sets a default value for a column if no value is specified
            CREATE INDEX - Used to create and retrieve data from 
            the database very quickly
            
            Below we can see some examples using the tables we've created.

*/ 
alter table t_zone modify ( zone varchar2(10)  primary key);
alter table t_zone modify ( user_count number default 0);
alter table t_zone modify ( zone_id number unique); 
 
alter table t_zone_loca modify ( ZONE_LOCA_ID number ); 
alter table t_zone_loca modify ( ZONE varchar(10) primary key); 
--foreign key
Alter table t_zone_loca
add constraint zone_loca_fk foreign key (ZONE) references t_zone(ZONE) ;

/*
                DDL - Create Index
    
            The CREATE INDEX statement is used to create indexes in tables.
            Indexes are used to retrieve data from the database more quickly 
            than otherwise. The users cannot see the indexes, they are just
            used to speed up searches/queries.
            
            Duplicate values are allowed, unless the key unique is used.

*/
create index zone_index on t_zone_loca(zone,location_id);
---DROP index
drop index zone_index;
--Create unique index
create unique index zone_index on t_zone_loca(zone,location_id);