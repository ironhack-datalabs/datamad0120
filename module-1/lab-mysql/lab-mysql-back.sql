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
-- Table `lab-mysql`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab-mysql`.`customer` ;

CREATE TABLE IF NOT EXISTS `lab-mysql`.`customer` (
  `idCustomer` INT NOT NULL,
  `Customer ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `adress` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCustomer`, `Customer ID`),
  UNIQUE INDEX `idCustomer_UNIQUE` (`idCustomer` ASC),
  UNIQUE INDEX `Customer ID_UNIQUE` (`Customer ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-mysql`.`salesforce`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab-mysql`.`salesforce` ;

CREATE TABLE IF NOT EXISTS `lab-mysql`.`salesforce` (
  `idStaff` INT NOT NULL,
  `Staff ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStaff`, `Staff ID`),
  UNIQUE INDEX `Staff ID_UNIQUE` (`Staff ID` ASC),
  UNIQUE INDEX `idStaff_UNIQUE` (`idStaff` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-mysql`.`invoice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab-mysql`.`invoice` ;

CREATE TABLE IF NOT EXISTS `lab-mysql`.`invoice` (
  `idInvoice` INT NOT NULL AUTO_INCREMENT,
  `invoice number` INT NOT NULL,
  `date` DATE NOT NULL,
  `idCar VIN` INT NOT NULL,
  `idCustomer` INT NOT NULL,
  `idStaff` INT NOT NULL,
  `salesforce_idStaff` INT NOT NULL,
  `customer_idCustomer` INT NOT NULL,
  `customer_idCustomer1` INT NOT NULL,
  `customer_Customer ID` INT NOT NULL,
  `salesforce_idStaff1` INT NOT NULL,
  `salesforce_Staff ID` INT NOT NULL,
  PRIMARY KEY (`idInvoice`, `invoice number`, `salesforce_idStaff`, `customer_idCustomer`),
  UNIQUE INDEX `invoice number_UNIQUE` (`idInvoice` ASC),
  UNIQUE INDEX `idInvoice_UNIQUE` (`invoice number` ASC),
  INDEX `fk_invoice_customer_idx` (`customer_idCustomer1` ASC, `customer_Customer ID` ASC),
  INDEX `fk_invoice_salesforce1_idx` (`salesforce_idStaff1` ASC, `salesforce_Staff ID` ASC),
  CONSTRAINT `fk_invoice_customer`
    FOREIGN KEY (`customer_idCustomer1` , `customer_Customer ID`)
    REFERENCES `lab-mysql`.`customer` (`idCustomer` , `Customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_salesforce1`
    FOREIGN KEY (`salesforce_idStaff1` , `salesforce_Staff ID`)
    REFERENCES `lab-mysql`.`salesforce` (`idStaff` , `Staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-mysql`.`car`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab-mysql`.`car` ;

CREATE TABLE IF NOT EXISTS `lab-mysql`.`car` (
  `idCar` INT NOT NULL,
  `id VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `year` YEAR NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `color` VARCHAR(10) NOT NULL,
  `invoice_idInvoice` INT NOT NULL,
  `invoice_invoice number` INT NOT NULL,
  `invoice_salesforce_idStaff` INT NOT NULL,
  `invoice_customer_idCustomer` INT NOT NULL,
  PRIMARY KEY (`idCar`, `id VIN`),
  UNIQUE INDEX `id VIN_UNIQUE` (`id VIN` ASC),
  UNIQUE INDEX `idCar_UNIQUE` (`idCar` ASC),
  INDEX `fk_car_invoice1_idx` (`invoice_idInvoice` ASC, `invoice_invoice number` ASC, `invoice_salesforce_idStaff` ASC, `invoice_customer_idCustomer` ASC),
  CONSTRAINT `fk_car_invoice1`
    FOREIGN KEY (`invoice_idInvoice` , `invoice_invoice number` , `invoice_salesforce_idStaff` , `invoice_customer_idCustomer`)
    REFERENCES `lab-mysql`.`invoice` (`idInvoice` , `invoice number` , `salesforce_idStaff` , `customer_idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
