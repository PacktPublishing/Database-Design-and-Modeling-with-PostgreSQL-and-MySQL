-- Create Student_Courses table 1NF

CREATE TABLE IF NOT EXISTS `DesignAndModeling`.`Student_Courses` ( 
  `EnrollementID` INT NOT NULL AUTO_INCREMENT, 
  `StudentID` INT NOT NULL, 
  `StudentNAME` VARCHAR(45) NULL, 
  `Courses` VARCHAR(45) NULL, 
  UNIQUE INDEX `StudentID_UNIQUE` (`StudentID` ASC) VISIBLE, 
  PRIMARY KEY (`EnrollementID`)) 
ENGINE = InnoDB; 
