-- Create Student Courses table 

CREATE SCHEMA IF NOT EXISTS `DesignAndModeling` DEFAULT CHARACTER SET utf8mb4; 

CREATE TABLE IF NOT EXISTS `DesignandModeling`.`Student Courses` ( 
  `StudentID` INT NOT NULL AUTO_INCREMENT, 
  `StudentNAME` VARCHAR(45) NULL, 
  `Courses` VARCHAR(45) NULL, 
  PRIMARY KEY (`StudentID`), 
  UNIQUE INDEX `StudentID_UNIQUE` (`StudentID` ASC) VISIBLE) 
ENGINE = InnoDB; 
