
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8 ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`cars` (
  `idcars` INT NOT NULL,
  `VIN` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`idcars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`customers` (
  `idcustomers` INT NOT NULL,
  `Customer ID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `ZIP` INT NULL,
  PRIMARY KEY (`idcustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salesperson` (
  `idSalesperson` INT NOT NULL,
  `Staff ID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`idSalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `idInvoices` INT NOT NULL,
  `Invoices number` VARCHAR(45) NULL,
  `Date` DATETIME NULL,
  `cars_idcars` INT NOT NULL,
  `customers_idcustomers` INT NOT NULL,
  `Salesperson_idSalesperson` INT NOT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_cars_idx` (`cars_idcars` ASC) VISIBLE,
  INDEX `fk_Invoices_customers1_idx` (`customers_idcustomers` ASC) VISIBLE,
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_idSalesperson` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_cars`
    FOREIGN KEY (`cars_idcars`)
    REFERENCES `lab_mysql`.`cars` (`idcars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_customers1`
    FOREIGN KEY (`customers_idcustomers`)
    REFERENCES `lab_mysql`.`customers` (`idcustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_idSalesperson`)
    REFERENCES `lab_mysql`.`Salesperson` (`idSalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
