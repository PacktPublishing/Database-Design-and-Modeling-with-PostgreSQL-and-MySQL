-- Potential 2NF Violation: StudentCourses Table with CourseName 

CREATE TABLE StudentCourses_Violation ( 
    EnrollmentID BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    StudentID BIGINT UNSIGNED, 
    CourseID VARCHAR(10), 
    CourseName VARCHAR(100), -- Potential violation of 2NF 
    Grade CHAR(2), 
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID), 
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID) 
); 
