-- PL/SQL Cursor Assignment
-- Create a cursor to fetch StudentID, StudentName,
-- and DepartmentID from the Student table
-- and display the records.

CREATE TABLE Student (
StudentID NUMBER(5) PRIMARY KEY,
StudentName VARCHAR2(20),
DepartmentID NUMBER(5)
);

INSERT INTO Student VALUES (1001, 'Arun', 101);
INSERT INTO Student VALUES (1002, 'Divya', 102);
INSERT INTO Student VALUES (1003, 'Karthik', 101);

COMMIT;

-- Write your PL/SQL program below.

DECLARE

```
-- Declare cursor here
```

BEGIN

```
-- Open cursor
-- Fetch records
-- Display records
-- Close cursor

NULL;
```

END;
/
