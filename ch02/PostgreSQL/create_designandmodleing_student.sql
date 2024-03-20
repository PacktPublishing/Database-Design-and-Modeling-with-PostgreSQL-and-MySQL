-- Create the Student table
CREATE TABLE Student (
    StudentID BIGSERIAL PRIMARY KEY,
    StudentName VARCHAR(100),
    DateOfBirth DATE,
    Major VARCHAR(100),
    ContactNumber VARCHAR(15)
);
