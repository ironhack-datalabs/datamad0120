-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LAB8_CarsCompany
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LAB8_CarsCompany
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LAB8_CarsCompany` ;
USE `LAB8_CarsCompany` ;

-- -----------------------------------------------------
-- Table `LAB8_CarsCompany`.`Salespersons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LAB8_CarsCompany`.`Salespersons` ;

CREATE TABLE IF NOT EXISTS `LAB8_CarsCompany`.`Salespersons` (
  `idSalespersons` INT NOT NULL AUTO_INCREMENT,
  `Staff ID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`idSalespersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LAB8_CarsCompany`.`Cars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LAB8_CarsCompany`.`Cars` ;

CREATE TABLE IF NOT EXISTS `LAB8_CarsCompany`.`Cars` (
  `idCars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LAB8_CarsCompany`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LAB8_CarsCompany`.`Customers` ;

CREATE TABLE IF NOT EXISTS `LAB8_CarsCompany`.`Customers` (
  `idCustomers` INT NOT NULL AUTO_INCREMENT,
  `Customer ID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State/Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postal` VARCHAR(45) NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LAB8_CarsCompany`.`Invoices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LAB8_CarsCompany`.`Invoices` ;

CREATE TABLE IF NOT EXISTS `LAB8_CarsCompany`.`Invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `Invoice Number` VARCHAR(45) NULL,
  `Date` VARCHAR(45) NULL,
  `Car` VARCHAR(45) NULL,
  `Customer` VARCHAR(45) NULL,
  `Cars_idCars` INT NULL,
  `Salespersons_idSalespersons` INT NULL,
  `Customers_idCustomers` INT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_idCars` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `LAB8_CarsCompany`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `LAB8_CarsCompany`.`Salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `LAB8_CarsCompany`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
