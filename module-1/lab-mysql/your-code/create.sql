USE lab_mysql;

CREATE TABLE `lab_mysql`.`Cars` (
  `idCars` INT NOT NULL,
  `Vehicle Identifications` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`idCars`));

CREATE TABLE `lab_mysql`.`Customers` (
  `idCustomers` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone number` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  PRIMARY KEY (`idCustomers`));

CREATE TABLE `lab_mysql`.`Invoices` (
  `Invoice Number` INT NOT NULL,
  `Date` VARCHAR(45) NULL,
  `Car` VARCHAR(45) NULL,
  `Customer `Year` VARCHAR(45) NULL,
  `Salesperson` VARCHAR(45) NULL,
  PRIMARY KEY (`Invoice Number`));

CREATE TABLE `lab_mysql`.`Salespersons` (
  `Staff ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  PRIMARY KEY (`Staff ID`));









