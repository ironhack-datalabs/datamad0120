use lab_mysql;

CREATE TABLE Cars (
  id_auto_cars INT NOT NULL,
  vin_car VARCHAR(45) NULL,
  manufacturer VARCHAR(45) NULL,
  model VARCHAR(45) NULL,
  year INT NULL,
  color VARCHAR(45) NULL,
  PRIMARY KEY (id_auto_cars),

CREATE TABLE Customers (
  id_auto_customer INT NOT NULL,
  id_customer VARCHAR(45) NULL,
  name VARCHAR(45) NULL,
  phone VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  address VARCHAR(45) NULL,
  city VARCHAR(45) NULL,
  state VARCHAR(45) NULL,
  country VARCHAR(45) NULL,
  postal VARCHAR(45) NULL,
  PRIMARY KEY (id_auto_customer),
  
CREATE TABLE Salespersons (
  id_auto_sales INT NOT NULL,
  id_staff VARCHAR(45) NULL,
  name VARCHAR(45) NULL,
  store VARCHAR(45) NULL,
  UNIQUE INDEX id_auto_sales_UNIQUE (id_auto_sales ASC) VISIBLE,
  PRIMARY KEY (id_auto_sales));
  
  CREATE TABLE Invoices (
  id_autom_invoice INT NOT NULL,
  id_invoice VARCHAR(45) NOT NULL,
  date_invoice DATETIME NOT NULL,
  