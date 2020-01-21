-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Lab-mysql1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Lab-mysql1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Lab-mysql1` DEFAULT CHARACTER SET utf8 ;
USE `Lab-mysql1` ;

-- -----------------------------------------------------
-- Table `Lab-mysql1`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Lab-mysql1`.`Customers` (
  `idCustomers` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone number` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Lab-mysql1`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Lab-mysql1`.`Salespersons` (
  `Staff ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`Staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Lab-mysql1`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Lab-mysql1`.`Invoices` (
  `Invoice Number` INT NOT NULL,
  `Date` VARCHAR(45) NULL,
  `Car` VARCHAR(45) NULL,
  `Customer` VARCHAR(45) NULL,
  `Salesperson` VARCHAR(45) NULL,
  `Customers_idCustomers` INT NOT NULL,
  `Salespersons_Staff ID` INT NOT NULL,
  `Customers_idCustomers1` INT NOT NULL,
  `Customers_idCustomers2` INT NOT NULL,
  `Salespersons_Staff ID1` INT NOT NULL,
  PRIMARY KEY (`Invoice Number`, `Customers_idCustomers`, `Salespersons_Staff ID`, `Customers_idCustomers1`),
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers2` ASC),
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_Staff ID1` ASC),
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers2`)
    REFERENCES `Lab-mysql1`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_Staff ID1`)
    REFERENCES `Lab-mysql1`.`Salespersons` (`Staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Lab-mysql1`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Lab-mysql1`.`Cars` (
  `idCars` INT NOT NULL,
  `Vehicule Identifications` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Invoices_Invoice Number` INT NOT NULL,
  `Invoices_Customers_idCustomers` INT NOT NULL,
  `Invoices_Salespersons_Staff ID` INT NOT NULL,
  `Invoices_Customers_idCustomers1` INT NOT NULL,
  PRIMARY KEY (`idCars`),
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_Invoice Number` ASC, `Invoices_Customers_idCustomers` ASC, `Invoices_Salespersons_Staff ID` ASC, `Invoices_Customers_idCustomers1` ASC),
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_Invoice Number` , `Invoices_Customers_idCustomers` , `Invoices_Salespersons_Staff ID` , `Invoices_Customers_idCustomers1`)
    REFERENCES `Lab-mysql1`.`Invoices` (`Invoice Number` , `Customers_idCustomers` , `Salespersons_Staff ID` , `Customers_idCustomers1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
