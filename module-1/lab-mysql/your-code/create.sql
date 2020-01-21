use lab_mysql;

CREATE TABLE Cars (
  id_cars INT NOT NULL,
  VIN VARCHAR(30) NULL,
  manufacturer VARCHAR(45) NULL,
  model VARCHAR(45) NULL,
  year INT NULL,
  color VARCHAR(45) NULL,
  PRIMARY KEY (id_cars);

CREATE TABLE Customers (
  id_customer INT NOT NULL,
  customer_ID VARCHAR(45) NULL,
  name VARCHAR(45) NULL,
  phone VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  address VARCHAR(45) NULL,
  city VARCHAR(45) NULL,
  state VARCHAR(45) NULL,
  country VARCHAR(45) NULL,
  postal VARCHAR(45) NULL,
  PRIMARY KEY (id_customer));

CREATE TABLE Salespersons (
  id_sales INT NOT NULL,
  staff_ID VARCHAR(45) NULL,
  name VARCHAR(45) NULL,
  store VARCHAR(45) NULL,
  PRIMARY KEY (id_sales));
  
  CREATE TABLE Invoices (
  id_invoice INT NOT NULL,
  Invoice_number VARCHAR(45) NOT NULL,
  date DATETIME NOT NULL,
  id_cars INT NOT NULL,
  id_customer INT NOT NULL,
  id_sales INT NOT NULL,
  PRIMARY KEY (id_invoice),
  FOREIGN KEY (id_cars) REFERENCES Cars,
  FOREIGN KEY (id_customer) REFERENCES Customers,
  FOREIGN KEY (id_sales) REFERENCES Sales));