-- Creating the StudentCourses table 

CREATE TABLE StudentCourses ( 
    EnrollmentID BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    StudentID BIGINT UNSIGNED, 
    CourseID VARCHAR(10), 
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID), 
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID) 
); 
