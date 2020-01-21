-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8 ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (
  `idCustomers` INT NOT NULL AUTO_INCREMENT,
  `custName` VARCHAR(45) NOT NULL,
  `custSurname` VARCHAR(45) NOT NULL,
  `custPhone` VARCHAR(45) NULL,
  `custMail` VARCHAR(45) NULL,
  `custAddress` VARCHAR(45) NULL,
  `custCity` VARCHAR(45) NULL,
  `custCountry` VARCHAR(45) NULL,
  `custPostCode` VARCHAR(45) NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Stores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Stores` (
  `idStores` INT NOT NULL AUTO_INCREMENT,
  `storeName` VARCHAR(45) NULL,
  `storeAddress` VARCHAR(45) NULL,
  `storeCity` VARCHAR(45) NULL,
  `storeCountry` VARCHAR(45) NULL,
  `storePostCode` VARCHAR(45) NULL,
  PRIMARY KEY (`idStores`),
  UNIQUE INDEX `idStores_UNIQUE` (`idStores` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salespersons` (
  `idSalespersons` INT NOT NULL AUTO_INCREMENT,
  `staffID` VARCHAR(45) NOT NULL,
  `staffName` VARCHAR(45) NULL,
  `staffEmail` VARCHAR(45) NULL,
  `Stores_idStores` INT NOT NULL,
  PRIMARY KEY (`idSalespersons`, `Stores_idStores`),
  UNIQUE INDEX `staffID_UNIQUE` (`staffID` ASC),
  UNIQUE INDEX `idSalespersons_UNIQUE` (`idSalespersons` ASC),
  INDEX `fk_Salespersons_Stores1_idx` (`Stores_idStores` ASC),
  CONSTRAINT `fk_Salespersons_Stores1`
    FOREIGN KEY (`Stores_idStores`)
    REFERENCES `lab_mysql`.`Stores` (`idStores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `InvNumber` VARCHAR(45) NOT NULL,
  `invDate` DATETIME NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  `Salespersons_Stores_idStores` INT NOT NULL,
  PRIMARY KEY (`idInvoices`, `Customers_idCustomers`, `Salespersons_idSalespersons`, `Salespersons_Stores_idStores`),
  UNIQUE INDEX `idInvoices_UNIQUE` (`idInvoices` ASC),
  UNIQUE INDEX `InvNumber_UNIQUE` (`InvNumber` ASC),
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC),
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSalespersons` ASC, `Salespersons_Stores_idStores` ASC),
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `lab_mysql`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons` , `Salespersons_Stores_idStores`)
    REFERENCES `lab_mysql`.`Salespersons` (`idSalespersons` , `Stores_idStores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Vehicles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Vehicles` (
  `idVehicles` INT NOT NULL AUTO_INCREMENT,
  `VINnumber` VARCHAR(45) NOT NULL,
  `carManufacturer` VARCHAR(45) NULL,
  `carModel` VARCHAR(45) NULL,
  `carYear` DATETIME NULL,
  `carColor` VARCHAR(45) NULL,
  `Invoices_idInvoices` INT NOT NULL,
  `Invoices_Customers_idCustomers` INT NOT NULL,
  `Invoices_Salespersons_idSalespersons` INT NOT NULL,
  `Invoices_Salespersons_Stores_idStores` INT NOT NULL,
  PRIMARY KEY (`idVehicles`, `Invoices_idInvoices`, `Invoices_Customers_idCustomers`, `Invoices_Salespersons_idSalespersons`, `Invoices_Salespersons_Stores_idStores`),
  UNIQUE INDEX `VIN_UNIQUE` (`idVehicles` ASC),
  UNIQUE INDEX `VINnumber_UNIQUE` (`VINnumber` ASC),
  INDEX `fk_Vehicles_Invoices1_idx` (`Invoices_idInvoices` ASC, `Invoices_Customers_idCustomers` ASC, `Invoices_Salespersons_idSalespersons` ASC, `Invoices_Salespersons_Stores_idStores` ASC),
  CONSTRAINT `fk_Vehicles_Invoices1`
    FOREIGN KEY (`Invoices_idInvoices` , `Invoices_Customers_idCustomers` , `Invoices_Salespersons_idSalespersons` , `Invoices_Salespersons_Stores_idStores`)
    REFERENCES `lab_mysql`.`Invoices` (`idInvoices` , `Customers_idCustomers` , `Salespersons_idSalespersons` , `Salespersons_Stores_idStores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
