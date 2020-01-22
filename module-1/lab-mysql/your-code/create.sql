use lab_mysql;

CREATE TABLE IF NOT EXISTS `cars`.`Customers` (
  `idCustomers` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `phone_number` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `state` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  `zip` VARCHAR(45) NULL DEFAULT NULL,
  `id_Custom` INT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cars`.`salesforce` (
  `idsalesforce` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  `staffID` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idsalesforce`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cars`.`Cars` (
  `idCars` INT NOT NULL,
  `VIN` VARCHAR(45) NULL DEFAULT NULL,
  `manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  `year` INT NULL DEFAULT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cars`.`invoices` (
  `Invoice number` INT NOT NULL,
  `date` DATETIME NULL DEFAULT NULL,
  `idinvoice` INT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `salesforce_idsalesforce1` INT NOT NULL,
  `Cars_idCars1` INT NOT NULL,
  PRIMARY KEY (`Invoice number`),
  INDEX `fk_invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  INDEX `fk_invoices_salesforce1_idx` (`salesforce_idsalesforce1` ASC) VISIBLE,
  INDEX `fk_invoices_Cars1_idx` (`Cars_idCars1` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `cars`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salesforce1`
    FOREIGN KEY (`salesforce_idsalesforce1`)
    REFERENCES `cars`.`salesforce` (`idsalesforce`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_Cars1`
    FOREIGN KEY (`Cars_idCars1`)
    REFERENCES `cars`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;