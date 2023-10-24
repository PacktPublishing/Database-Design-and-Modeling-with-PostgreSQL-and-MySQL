-- Create StudentCourses table 2NF

CREATE TABLE StudentCourses ( 
    EnrollmentID BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    StudentID BIGINT UNSIGNED, 
    CourseID VARCHAR(10), 
    Grade CHAR(2), 
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID), 
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID) 
); 
