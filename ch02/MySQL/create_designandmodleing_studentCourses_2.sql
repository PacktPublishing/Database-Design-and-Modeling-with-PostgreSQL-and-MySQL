-- Create Student_Courses table 1NF

CREATE TABLE IF NOT EXISTS `DesignAndModeling`.`StudentCourses` ( 
  `EnrollementID` INT NOT NULL AUTO_INCREMENT, 
  `StudentID` INT NOT NULL, 
  `StudentNAME` VARCHAR(45) NULL, 
  `Courses` VARCHAR(45) NULL, 
  PRIMARY KEY (`EnrollementID`)) 
ENGINE = InnoDB; 
