/*

                DDL – Data Definition Language

    Data Definition Language is used to define the database structure or schema. 
    DDL is also used to specify additional properties of the data. The storage 
    structure and access methods used by the database system by a set of 
    statements in a special type of DDL called a data storage and definition 
    language. 

*/
/*

                CREATE TABLE
                
    For creating a table we must use the  command CREATE TABLE <table name>
    and then specify the fields and their types also as the examples below.

*/
CREATE TABLE T_LOCATION
( LOCATION_ID  VARCHAR2(20),
  ZONE   VARCHAR2(10),
  USER_COUNT    NUMBER,
  DESCRIPTION   VARCHAR2(50),
  LAST_COUNT    DATE  
  );
  CREATE TABLE T_ZONE
( ZONE_ID   INTEGER,
  ZONE   VARCHAR2(10),
  USER_COUNT    NUMBER,
  DESCRIPTION   VARCHAR2(50),
  LAST_COUNT    DATE  
  );
  CREATE TABLE T_ZONE_LOCA
( ZONE_LOCA_ID   INTEGER,
  ZONE   VARCHAR2(10),
  LOCATION_ID   VARCHAR2(20),
  DESCRIPTION   VARCHAR2(50)
  ); 
/*

                ALTER TABLE
                
    For modifying a table we must use the  command ALTER TABLE <table name>
    and then specify the fields being altered and their types 
    as the examples below, we can add, modify and drop a field from a table.

*/

ALTER TABLE T_LOCATION ADD  ( C1 VARCHAR(20));  --ADD FIELD
ALTER TABLE T_LOCATION MODIFY  ( C1 VARCHAR(50)); --MODIFY FIELD
ALTER TABLE T_LOCATION DROP  ( C1 ); --DROP FIELD

/*

                TRUNCATE AND DROP TABLE
                
    For modifying a table we must use the  command ALTER TABLE <table name>
    and then specify the fields being altered and their types 
    as the examples below, we can add, modify and drop a field from a table.
    
    Use the file "insert t_zone_drop to populate the table with records".

*/ 
