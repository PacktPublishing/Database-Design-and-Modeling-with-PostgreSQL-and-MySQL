-- Create first Student table 

CREATE TABLE Student ( 
    StudentID BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    StudentName VARCHAR(100), 
    DateOfBirth DATE, 
    Major VARCHAR(100), 
    ContactNumber VARCHAR(15) 
); 
