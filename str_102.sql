/*101+102 */


CREATE TABLE excellent_students AS
SELECT * FROM students
WHERE gpa > 90;

CREATE TABLE failed_students AS
SELECT * FROM students
WHERE gpa < 60;
SELECT student_name 
FROM students 
WHERE student_name LIKE 'A%';

SELECT student_name 
FROM students 
WHERE LENGTH(student_name) = 4;

SELECT 
    AVG(gpa) AS [المعدل العام للطلاب], 
    MAX(gpa) AS [أعلى معدل تراكمي], 
    MIN(gpa) AS [أقل معدل تراكمي] 
FROM students;
SELECT student_name 
FROM students 
WHERE level = 6 AND gpa = 100;

SELECT * FROM students 
WHERE level = 1 AND age BETWEEN 15 AND 16;

SELECT COUNT(*) AS [إجمالي طلاب المستوى الثاني] 
FROM students 
WHERE level = 2;



SELECT DISTINCT track 
FROM students;

SELECT FLOOR(AVG(gpa)) AS [المتوسط الحسابي المقرب لأسفل] 
FROM students;

SELECT 
    student_name,
    REPLACE(REPLACE(gender, 'F', 'Female'), 'M', 'Male') AS gender
FROM students;

UPDATE students 
SET gender = REPLACE(REPLACE(gender, 'F', 'Female'), 'M', 'Male');

UPDATE students 
SET gpa = gpa + 5 
WHERE gpa < 60;




