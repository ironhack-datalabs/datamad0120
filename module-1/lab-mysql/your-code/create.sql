USE lab_mysql;


CREATE TABLE Cars (
    VIN VARCHAR(45) NOT NULL,
    Manufacturer VARCHAR(45) NOT NULL,
    Model VARCHAR(45) NOT NULL,
    ProductionYear YEAR(4) NOT NULL,
    Color VARCHAR(45) NOT NULL
);

CREATE TABLE Customers (
    CustomerID VARCHAR(45) NOT NULL,
    CustomerName VARCHAR(45) NOT NULL,
    PhoneNumber VARCHAR(45) NULL,
    email VARCHAR(45) NULL,
    `Address` VARCHAR(45) NULL,
    City VARCHAR(45) NULL,
    `State/Province` VARCHAR(45) NULL,
    Country VARCHAR(45) NULL,
    CustomerCode VARCHAR(45) NOT NULL
);

CREATE TABLE Salespersons (
    staffID VARCHAR(45) NOT NULL,
    SalespersonsName VARCHAR(45) NULL,
    Store VARCHAR(45) NULL
);

CREATE TABLE Invoices (
    InvoiceNumber INT NOT NULL,
    `Date` DATE NOT NULL,
    Cars_VIN VARCHAR(45) NOT NULL,
    Salespersons_staffID VARCHAR(45) NOT NULL,
    Customers_CustomerID VARCHAR(45) NOT NULL
);

CREATE TABLE Customers_has_invoices (
    Customers_CustomerID VARCHAR(45) NOT NULL,
    Invoices_InvoiceNumber INT NOT NULL
);