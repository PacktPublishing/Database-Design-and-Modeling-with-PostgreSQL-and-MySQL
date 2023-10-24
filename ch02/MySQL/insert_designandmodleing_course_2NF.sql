-- Insert data to course table

INSERT INTO Course (CourseID, CourseName) VALUES 
('CSC101', 'Introduction to Computer Science'), 
('DSC101', 'Introduction to Data Science'); 
INSERT INTO StudentCourses (StudentID, CourseID, Grade) VALUES 
(4, 'CSC101', 'A'), 
(5, 'DSC101', 'B'), 
(4, 'DSC101', 'A'); 

 
