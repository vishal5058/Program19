# PL/SQL Cursor Assignment

## Question

Create a cursor to fetch `StudentID`, `StudentName`, and `DepartmentID` from the `Student` table and display the records.

## Student Table

The `Student` table contains:

| Column       | Data Type    |
| ------------ | ------------ |
| StudentID    | NUMBER(5)    |
| StudentName  | VARCHAR2(20) |
| DepartmentID | NUMBER(5)    |

## Requirements

Your PL/SQL program must:

1. Declare an explicit cursor.
2. Fetch `StudentID`, `StudentName`, and `DepartmentID`.
3. Open the cursor.
4. Fetch records from the cursor.
5. Display the fetched records.
6. Close the cursor.

## Expected Output

The program should display records similar to:

```text
StudentID: 1001 StudentName: Arun DepartmentID: 101
StudentID: 1002 StudentName: Divya DepartmentID: 102
StudentID: 1003 StudentName: Karthik DepartmentID: 101
```

The exact formatting of the output may vary, but the three values for each student must be displayed.
