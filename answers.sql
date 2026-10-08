SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

    v_studentid Student.StudentID%TYPE;
    v_studentname Student.StudentName%TYPE;
    v_departmentid Student.DepartmentID%TYPE;

BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor
        INTO v_studentid, v_studentname, v_departmentid;

        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'StudentID: ' || v_studentid ||
            ' StudentName: ' || v_studentname ||
            ' DepartmentID: ' || v_departmentid
        );
    END LOOP;

    CLOSE student_cursor;
END;
/
