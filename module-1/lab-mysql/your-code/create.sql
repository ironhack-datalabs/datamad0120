-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab-mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab-mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab-mysql` ;
USE `lab-mysql` ;

-- -----------------------------------------------------
-- Table `lab-mysql`.`Cars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab-mysql`.`Cars` ;

CREATE TABLE IF NOT EXISTS `lab-mysql`.`Cars` (
  `idCars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` YEAR NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-mysql`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab-mysql`.`Customers` ;

CREATE TABLE IF NOT EXISTS `lab-mysql`.`Customers` (
  `idCustomers` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State_province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-mysql`.`Salespersons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab-mysql`.`Salespersons` ;

CREATE TABLE IF NOT EXISTS `lab-mysql`.`Salespersons` (
  `idSalespersons` INT NOT NULL AUTO_INCREMENT,
  `Staff` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSalespersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-mysql`.`Invoices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab-mysql`.`Invoices` ;

CREATE TABLE IF NOT EXISTS `lab-mysql`.`Invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `Date` DATETIME(6) NOT NULL,
  `Car` INT NOT NULL,
  `Customer` INT NOT NULL,
  `SalesPerson` INT NOT NULL,
  `Cars_idCars` INT NULL,
  `Salespersons_idSalespersons` INT NULL,
  `Customers_idCustomers` INT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_idCars` ASC),
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSalespersons` ASC),
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC),
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `lab-mysql`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `lab-mysql`.`Salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `lab-mysql`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
