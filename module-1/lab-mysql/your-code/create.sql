USE lab_mysql;

CREATE TABLE Cars (
    ID_cars INT NOT NULL,
    VIN VARCHAR(45) NOT NULL,
    Manufacturer VARCHAR(45) NOT NULL,
    Model VARCHAR(45) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(45) NOT NULL,
    PRIMARY KEY (ID_cars));

CREATE TABLE Customers (
    ID_customers INT NOT NULL,
    Customer_ID INT NOT NULL,
    Name VARCHAR(45) NOT NULL,
    Phone VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NULL,
    Address VARCHAR(45) NOT NULL,
    City VARCHAR(45) NOT NULL,
    State VARCHAR(45) NOT NULL,
    Country VARCHAR(45) NOT NULL,
    Postal INT NOT NULL,
    PRIMARY KEY (ID_customers));

CREATE TABLE Salespersons (
    ID_salespersons INT NOT NULL,
    Staff_ID VARCHAR(45) NOT NULL,
    Name VARCHAR(45) NOT NULL,
    Store VARCHAR(45) NOT NULL,
    PRIMARY KEY (ID_salespersons));

CREATE TABLE Invoices (
    ID_invoices INT NOT NULL,
    Invoice_number INT NOT NULL,
    Date DATE NOT NULL,
    Cars_ID_cars INT NOT NULL,
    Customers_ID_customers INT NOT NULL,
    Salespersons_ID_salespersons INT NOT NULL,
    PRIMARY KEY (ID_invoices),
    INDEX fk_Invoices_Cars1_idx (Cars_ID_cars ASC),
    INDEX fk_Invoices_Customers_idx (Customers_ID_customers ASC),
    INDEX fk_Invoices_Salespersons1_idx (Salespersons_ID_salespersons ASC),
    CONSTRAINT fk_Invoices_Cars1
    FOREIGN KEY (Cars_ID_cars)
    REFERENCES Cars (ID_cars)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Invoices_Customers
    FOREIGN KEY (Customers_ID_customers)
    REFERENCES Customers (ID_customers)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Invoices_Salespersons1
    FOREIGN KEY (Salespersons_ID_salespersons)
    REFERENCES Salespersons (ID_salespersons)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);