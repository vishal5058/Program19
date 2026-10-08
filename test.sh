#!/bin/bash

set -u

echo "======================================"
echo "PL/SQL CURSOR AUTOGRADING"
echo "======================================"

# Check answers.sql

if [ ! -f "./answers.sql" ]; then
echo "FAIL: answers.sql not found."
exit 1
fi

echo "answers.sql found."

# Check that a cursor is declared

if ! grep -Eiq "CURSOR[[:space:]]+[A-Za-z_][A-Za-z0-9_]*[[:space:]]+IS" answers.sql; then
echo "FAIL: Explicit cursor declaration not found."
exit 1
fi

echo "PASS: Explicit cursor declaration found."

# Check StudentID

if ! grep -Eiq "StudentID" answers.sql; then
echo "FAIL: StudentID is not used."
exit 1
fi

echo "PASS: StudentID found."

# Check StudentName

if ! grep -Eiq "StudentName" answers.sql; then
echo "FAIL: StudentName is not used."
exit 1
fi

echo "PASS: StudentName found."

# Check DepartmentID

if ! grep -Eiq "DepartmentID" answers.sql; then
echo "FAIL: DepartmentID is not used."
exit 1
fi

echo "PASS: DepartmentID found."

# Check OPEN

if ! grep -Eiq "OPEN[[:space:]]+[A-Za-z_][A-Za-z0-9_]*[[:space:]]*;" answers.sql; then
echo "FAIL: Cursor OPEN statement not found."
exit 1
fi

echo "PASS: Cursor OPEN found."

# Check FETCH

if ! grep -Eiq "FETCH[[:space:]]+[A-Za-z_][A-Za-z0-9_]*" answers.sql; then
echo "FAIL: Cursor FETCH statement not found."
exit 1
fi

echo "PASS: Cursor FETCH found."

# Check CLOSE

if ! grep -Eiq "CLOSE[[:space:]]+[A-Za-z_][A-Za-z0-9_]*[[:space:]]*;" answers.sql; then
echo "FAIL: Cursor CLOSE statement not found."
exit 1
fi

echo "PASS: Cursor CLOSE found."

# Check output statement

if ! grep -Eiq "DBMS_OUTPUT[[:space:]]*.[[:space:]]*PUT_LINE" answers.sql; then
echo "FAIL: DBMS_OUTPUT.PUT_LINE not found."
exit 1
fi

echo "PASS: DBMS_OUTPUT.PUT_LINE found."

# Check Student table

if ! grep -Eiq "FROM[[:space:]]+Student" answers.sql; then
echo "FAIL: Student table is not referenced."
exit 1
fi

echo "PASS: Student table referenced."

echo "======================================"
echo "ALL AUTOGRADING CHECKS PASSED"
echo "======================================"

exit 0
