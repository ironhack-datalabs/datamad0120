use lab_mysql;

CREATE TABLE Cars (
  id_auto_cars INT NOT NULL,
  vin_car VARCHAR(45) NULL,
  manufacturer VARCHAR(45) NULL,
  model VARCHAR(45) NULL,
  year INT NULL,
  color VARCHAR(45) NULL,
  PRIMARY KEY (id_auto_cars),
  UNIQUE INDEX id_auto_cars_UNIQUE (id_auto_cars ASC) VISIBLE);

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
  UNIQUE INDEX id_auto_customer_UNIQUE (id_auto_customer ASC) VISIBLE);

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
  FK_cars INT NOT NULL,
  FK_customer INT NOT NULL,
  FK_sales INT NOT NULL,
  PRIMARY KEY (id_autom_invoice),
  UNIQUE INDEX id_autom_invoice_UNIQUE (id_autom_invoice ASC) VISIBLE,
  UNIQUE INDEX id_invoice_UNIQUE (id_invoice ASC) VISIBLE,
  INDEX fk_Invoices_Salespersons_idx (FK_sales ASC) VISIBLE,
  INDEX fk_Invoices_Customers1_idx (FK_customer ASC) VISIBLE,
  INDEX fk_Invoices_Cars1_idx (FK_cars ASC) VISIBLE,
  CONSTRAINT fk_Invoices_Salespersons
    FOREIGN KEY (FK_sales)
    REFERENCES Salespersons (id_auto_sales)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Invoices_Customers1
    FOREIGN KEY (FK_customer)
    REFERENCES Customers (id_auto_customer)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Invoices_Cars1
    FOREIGN KEY (FK_cars)
    REFERENCES Cars (id_auto_cars)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);