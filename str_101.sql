create database school_of_str;
use school_of_str;
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,                 
    teacher_name VARCHAR(100) NOT NULL,         
    birth_date DATE,                          
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    email VARCHAR(100) UNIQUE,               
    office_number VARCHAR(20)                   
);
CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,            
    subject_name VARCHAR(100) NOT NULL       
);
CREATE TABLE Students (
    student_id INT PRIMARY KEY,                 
    student_name VARCHAR(100) NOT NULL,     
    birth_date DATE,                          
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    enrollment_date DATE,                      
    email VARCHAR(100) UNIQUE,                 
    grade_level INT CHECK (grade_level BETWEEN 1 AND 6),
    track VARCHAR(20) CHECK (track IN ('علمي', 'انساني')), 
    gpa DECIMAL(5,2) CHECK (gpa BETWEEN 0 AND 100)       
);
INSERT INTO Teachers (teacher_id, teacher_name, birth_date, gender, email, office_number) VALUES
(1, 'أحمد المنصور', '1980-05-12', 'M', 'ahmed@school.com', 'A-101'),
(2, 'سارة العتيبي', '1985-08-22', 'F', 'sarah@school.com', 'B-202'),
(3, 'خالد الشمري', '1978-11-02', 'M', 'khaled@school.com', 'A-103'),
(4, 'فاطمة الدوسري', '1990-03-15', 'F', 'fatimah@school.com', 'B-204'),
(5, 'محمد القحطاني', '1982-07-19', 'M', 'mohammed@school.com', 'A-105'),
(6, 'هند الحريص', '1988-12-30', 'F', 'hind@school.com', 'B-206'),
(7, 'عبدالله السديري', '1975-01-25', 'M', 'abdullah@school.com', 'A-107'),
(8, 'نورة المالكي', '1992-06-14', 'F', 'noura@school.com', 'B-208'),
(9, 'يوسف الحربي', '1983-09-09', 'M', 'yousef@school.com', 'A-109'),
(10, 'ريم الزهراني', '1987-04-05', 'F', 'reem@school.com', 'B-210');
INSERT INTO Subjects (subject_id, subject_name) VALUES
(101, 'الرياضيات'),
(102, 'الفيزياء'),
(103, 'الكيمياء'),
(104, 'اللغة العربية'),
(105, 'اللغة الإنجليزية'),
(106, 'التاريخ');
INSERT INTO Students (student_id, student_name, birth_date, gender, enrollment_date, email, grade_level, track, gpa) VALUES
(1, 'عبدالرحمن العلي', '2009-01-15', 'M', '2024-09-01', 'abdulrahman@student.com', 1, 'علمي', 95.50),
(2, 'جنى الفهد', '2008-04-22', 'F', '2023-09-01', 'jana@student.com', 2, 'علمي', 98.00),
(3, 'فيصل السالم', '2007-08-11', 'M', '2022-09-01', 'faisal@student.com', 3, 'انساني', 88.25),
(4, 'رنا العبدالله', '2009-11-05', 'F', '2024-09-01', 'rana@student.com', 1, 'انساني', 91.00),
(5, 'سلطان الصالح', '2008-03-19', 'M', '2023-09-01', 'sultan@student.com', 2, 'علمي', 85.75),
(6, 'شهد العمر', '2007-05-30', 'F', '2022-09-01', 'shahd@student.com', 3, 'علمي', 99.10),
(7, 'مشاري الراشد', '2009-07-25', 'M', '2024-09-01', 'meshari@student.com', 1, 'علمي', 79.00),
(8, 'أمل العيسى', '2008-12-14', 'F', '2023-09-01', 'amal@student.com', 2, 'انساني', 93.40),
(9, 'خالد التميمي', '2007-10-09', 'M', '2022-09-01', 'khaled.s@student.com', 3, 'انساني', 82.00),
(10, 'مريم النعيم', '2009-02-28', 'F', '2024-09-01', 'maryam@student.com', 1, 'علمي', 96.85),
(11, 'سعود الناصر', '2008-06-17', 'M', '2023-09-01', 'saud@student.com', 2, 'علمي', 90.20),
(12, 'لينا الماجد', '2007-09-01', 'F', '2022-09-01', 'lina@student.com', 3, 'انساني', 94.50),
(13, 'فهد الباز', '2009-05-13', 'M', '2024-09-01', 'fahad@student.com', 4, 'علمي', 87.30),
(14, 'نوف القاسم', '2008-01-20', 'F', '2023-09-01', 'nouf@student.com', 5, 'علمي', 97.60),
(15, 'تركي السديري', '2007-03-11', 'M', '2022-09-01', 'turki@student.com', 6, 'انساني', 84.15),
(16, 'هيفاء السعيد', '2009-08-24', 'F', '2024-09-01', 'haifa@student.com', 4, 'انساني', 89.90),
(17, 'بدر المشعل', '2008-10-31', 'M', '2023-09-01', 'badr@student.com', 5, 'علمي', 92.45),
(18, 'سديم الشايع', '2007-02-14', 'F', '2022-09-01', 'sadeem@student.com', 6, 'علمي', 98.70),
(19, 'صالح المقرن', '2009-12-02', 'M', '2024-09-01', 'saleh@student.com', 4, 'علمي', 76.50),
(20, 'ريما السلطان', '2008-07-08', 'F', '2023-09-01', 'rima@student.com', 5, 'انساني', 95.00),
(21, 'يزيد الدخيل', '2007-04-19', 'M', '2022-09-01', 'yazeed@student.com', 6, 'انساني', 81.20),
(22, 'لجين العقيل', '2009-06-06', 'F', '2024-09-01', 'loujain@student.com', 1, 'علمي', 93.15),
(23, 'نواف السيف', '2008-09-15', 'M', '2023-09-01', 'nawaf@student.com', 2, 'علمي', 88.80),
(24, 'غادة المنيف', '2007-11-23', 'F', '2022-09-01', 'ghada@student.com', 3, 'انساني', 96.00),
(25, 'سلمان الجبر', '2009-03-30', 'M', '2024-09-01', 'salman@student.com', 4, 'علمي', 83.40),
(26, 'جود الخالدي', '2008-05-12', 'F', '2023-09-01', 'joud@student.com', 5, 'علمي', 94.90),
(27, 'ماجد العبيد', '2007-07-07', 'M', '2022-09-01', 'majed@school.com', 6, 'انساني', 78.60),
(28, 'ديمة البراهيم', '2009-10-18', 'F', '2024-09-01', 'deema@student.com', 2, 'انساني', 91.75),
(29, 'راكان العسكر', '2008-02-25', 'M', '2023-09-01', 'rakan@student.com', 3, 'علمي', 86.10),
(30, 'يارا السويدان', '2007-12-12', 'F', '2022-09-01', 'yara@student.com', 1, 'علمي', 99.50);



SELECT * FROM Teachers;
SELECT * FROM Subjects;
SELECT * FROM Student



/*SELECT * FROM Students 
ORDER BY student_name ASC;


SELECT student_id, student_name AS 'اسم الطالب المعتمد', email, gpa 
FROM Students;   

SELECT * FROM Students 
ORDER BY student_name ASC;


SELECT student_id, student_name AS 'اسم الطالب المعتمد', email, gpa 
FROM Students;




UPDATE Students 
SET email = 'abdulrahman.new@student.com' 
WHERE student_id = 1;


UPDATE Teachers 
SET office_number = 'B-555' 
WHERE teacher_id = 2;


-- تعديل اسم جدول المواد من 'Subjects' إلى 'School_Subjects'
ALTER TABLE Subjects RENAME TO School_Subjects;
*/
