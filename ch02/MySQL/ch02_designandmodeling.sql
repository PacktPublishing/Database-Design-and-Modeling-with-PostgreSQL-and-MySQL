-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema DesignAndModeling
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DesignAndModeling
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DesignAndModeling` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `DesignAndModeling` ;

-- -----------------------------------------------------
-- Table `DesignAndModeling`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DesignAndModeling`.`Course` (
  `CourseID` VARCHAR(10) NOT NULL,
  `CourseName` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`CourseID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `DesignAndModeling`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DesignAndModeling`.`Student` (
  `StudentID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `StudentName` VARCHAR(100) NULL DEFAULT NULL,
  `DateOfBirth` DATE NULL DEFAULT NULL,
  `Major` VARCHAR(100) NULL DEFAULT NULL,
  `ContactNumber` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`StudentID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `DesignAndModeling`.`StudentCourses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DesignAndModeling`.`StudentCourses` (
  `EnrollmentID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `StudentID` BIGINT UNSIGNED NULL DEFAULT NULL,
  `CourseID` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`EnrollmentID`),
  INDEX `StudentID` (`StudentID` ASC) VISIBLE,
  INDEX `CourseID` (`CourseID` ASC) VISIBLE,
  CONSTRAINT `studentcourses_ibfk_1`
    FOREIGN KEY (`StudentID`)
    REFERENCES `DesignAndModeling`.`Student` (`StudentID`),
  CONSTRAINT `studentcourses_ibfk_2`
    FOREIGN KEY (`CourseID`)
    REFERENCES `DesignAndModeling`.`Course` (`CourseID`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
