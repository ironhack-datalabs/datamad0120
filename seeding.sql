INSERT INTO `lab_mysql`.`Car` (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) 
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", "2019", "Blue");
INSERT INTO `lab_mysql`.`Car` (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) 
VALUES ("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019", "Red");
INSERT INTO `lab_mysql`.`Car` (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) 
VALUES ("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White");
INSERT INTO `lab_mysql`.`Car` (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) 
VALUES ("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "2018", "Silver");
INSERT INTO `lab_mysql`.`Car` (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) 
VALUES ("DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray");
INSERT INTO `lab_mysql`.`Car` (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) 
VALUES ("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", "2019", "Gray");

INSERT INTO `lab_mysql`.`Customer` (`Customer ID`, `Name`, `Phone Number`, `Email`, `Address`, `City`, `State / Province`, `Country`, `ZipCode`) 
VALUES (10001, "Pablo Picasso", "+34 636 17 63 82", NULL, "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045);
INSERT INTO `lab_mysql`.`Customer` (`Customer ID`, `Name`, `Phone Number`, `Email`, `Address`, `City`, `State / Province`, `Country`, `ZipCode`) 
VALUES (20001, "Abraham Lincoln", "+1 305 907 7086", NULL, "120 SW 8th St", "Miami", "Florida", "United States", 33130);
INSERT INTO `lab_mysql`.`Customer` (`Customer ID`, `Name`, `Phone Number`, `Email`, `Address`, `City`, `State / Province`, `Country`, `ZipCode`) 
VALUES (30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", NULL, "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

INSERT INTO `lab_mysql`.`Salesperson` (`Staff ID`, `Name`, `Store`) 
VALUES (00001, "Petey Cruiser", "Madrid");
INSERT INTO `lab_mysql`.`Salesperson` (`Staff ID`, `Name`, `Store`) 
VALUES (00002, "Anna Sthesia", "Barcelona");
INSERT INTO `lab_mysql`.`Salesperson` (`Staff ID`, `Name`, `Store`) 
VALUES (00003, "Paul Molive", "Berlin");
INSERT INTO `lab_mysql`.`Salesperson` (`Staff ID`, `Name`, `Store`) 
VALUES (00004, "Gail Forcewind", "Paris");
INSERT INTO `lab_mysql`.`Salesperson` (`Staff ID`, `Name`, `Store`) 
VALUES (00005, "Paige Turner", "Mimia");
INSERT INTO `lab_mysql`.`Salesperson` (`Staff ID`, `Name`, `Store`) 
VALUES (00006, "Bob Frapples", "Mexico City");
INSERT INTO `lab_mysql`.`Salesperson` (`Staff ID`, `Name`, `Store`) 
VALUES (00007, "Walter Melon", "Amsterdam");
INSERT INTO `lab_mysql`.`Salesperson` (`Staff ID`, `Name`, `Store`) 
VALUES (00008, "Shonda Leer", "São Paulo");

INSERT INTO `lab_mysql`.`Invoice` (`Invoice Number`, `Date`, `Car_CarID`, `Customer_Customer Number`, `Salesperson_StaffNumber`) 
VALUES ("852399038", "2018-08-22", 1, 2, 4);
INSERT INTO `lab_mysql`.`Invoice` (`Invoice Number`, `Date`, `Car_CarID`, `Customer_Customer Number`, `Salesperson_StaffNumber`) 
VALUES ("731166526", "2018-12-31", 4, 1, 6);
INSERT INTO `lab_mysql`.`Invoice` (`Invoice Number`, `Date`, `Car_CarID`, `Customer_Customer Number`, `Salesperson_StaffNumber`) 
VALUES ("271135104", "2019-01-22", 3, 3, 8);
