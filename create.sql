USE lab_mysql;
CREATE TABLE IF NOT EXISTS `Car` (
  `CarID` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(50) NULL,
  `Manufacturer` VARCHAR(50) NULL,
  `Model` VARCHAR(50) NULL,
  `Year` YEAR(4) NULL,
  `Color` VARCHAR(50) NULL,
  PRIMARY KEY (`CarID`));
  USE lab_mysql;
  CREATE TABLE IF NOT EXISTS `Customer` (
  `Customer Number` INT NOT NULL AUTO_INCREMENT,
  `Customer ID` INT NULL,
  `Name` VARCHAR(30) NULL,
  `Phone Number` VARCHAR(30) NULL,
  `Email` VARCHAR(50) NULL,
  `Address` VARCHAR(50) NULL,
  `City` VARCHAR(45) NULL,
  `State / Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `ZipCode` INT NULL,
  PRIMARY KEY (`Customer Number`));
  USE lab_mysql;
CREATE TABLE IF NOT EXISTS `Salesperson` (
  `StaffNumber` INT NOT NULL AUTO_INCREMENT,
  `Staff ID` VARCHAR(50) NULL,
  `Name` VARCHAR(50) NULL,
  `Store` VARCHAR(50) NULL,
  PRIMARY KEY (`StaffNumber`));
  USE lab_mysql;
  CREATE TABLE IF NOT EXISTS `Invoice` (
  `InvoiceID` INT NOT NULL AUTO_INCREMENT,
  `Invoice Number` VARCHAR(30) NOT NULL,
  `Date` DATETIME NULL,
  `Car_CarID` INT NOT NULL,
  `Customer_Customer Number` INT NOT NULL,
  `Salesperson_StaffNumber` INT NOT NULL,
  PRIMARY KEY (`InvoiceID`),
  INDEX `fk_Invoice_Car_idx` (`Car_CarID` ASC) VISIBLE,
  INDEX `fk_Invoice_Customer1_idx` (`Customer_Customer Number` ASC) VISIBLE,
  INDEX `fk_Invoice_Salesperson1_idx` (`Salesperson_StaffNumber` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_Car`
    FOREIGN KEY (`Car_CarID`)
    REFERENCES `Car` (`CarID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Customer1`
    FOREIGN KEY (`Customer_Customer Number`)
    REFERENCES `Customer` (`Customer Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Salesperson1`
    FOREIGN KEY (`Salesperson_StaffNumber`)
    REFERENCES `Salesperson` (`StaffNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);