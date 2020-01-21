-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8 ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`Cars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_mysql`.`Cars` ;

CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (
  `idCars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` YEAR(4) NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_mysql`.`Customers` ;

CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (
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
-- Table `lab_mysql`.`Salespersons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_mysql`.`Salespersons` ;

CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salespersons` (
  `idSaespersons` INT NOT NULL AUTO_INCREMENT,
  `Staff` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSaespersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_mysql`.`Invoices` ;

CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `InvoiceNumber` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `Car` INT NOT NULL,
  `Customer` INT NOT NULL,
  `SalesPerson` INT NOT NULL,
  `Cars_idCars` INT NULL,
  `Customers_idCustomers` INT NULL,
  `Salespersons_idSaespersons` INT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_idCars` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSaespersons` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `lab_mysql`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `lab_mysql`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSaespersons`)
    REFERENCES `lab_mysql`.`Salespersons` (`idSaespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
