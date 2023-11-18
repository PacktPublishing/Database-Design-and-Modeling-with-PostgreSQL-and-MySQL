CREATE TABLE StudentCourses_Violation (
    EnrollmentID BIGSERIAL PRIMARY KEY,
    StudentID BIGINT,
    CourseID VARCHAR(10),
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
