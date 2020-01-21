INSERT INTO lab_mysql.Cars(vin, year, model, manufacturer) VALUES ("3K096I98581DHSNUP", "2019", "Tiguan", "Volkswagen", "Blue"),
("ZM8G7BEUQZ97IH46V", "2019", "Rifter", "Peugeot", "Red"), 
("RKXVNNIHLVVZOUB4M", "2019", "Fusion", "Ford", "White"), 
("HKNDGS7CU31E9Z7JW", "2018", "RAV4", "Toyota", "Silver"), 
("DAM41UDN3CHU2WVF6", "2019", "V60 Cross Country", "Volvo", "Gray"), 
("DAM41UDN3CHU2WVF6", "2019", "V60", "Volvo", "Gray");

INSERT INTO lab_mysql.Customers(idCustomers, name, phoneNumber, email, address, city, state, zip)
VALUES ("10001", "Pablo Picasso", "+34 636 17 63 82", "picasso@gmail.com", "Paseo de la Chopera, 14", "Madrid", "Spain", "28045"),
("20001", "Abraham Lincoln", "+1 305 907 7086", "lincon@gmail.com", "120 SW 8th St", "Miami", "United States", "33130"),
("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00", "napoleonTheBoss@gmail.com", "40 Rue du Colisée", "Paris", "France", "75008");

INSERT INTO lab_mysql.Salespersons(idSalespersons, name, store) VALUES
(00001, "Petey Cruiser", "Madrid"),
(00002, "Anna Sthesia", "Barcelona"),
(00003, "Paul Moliver", "Berlin"),
(00004, "Gail Forcewind	", "Paris"),
(00005, "Paige Turner", "Mimia"),
(00006, "Bob Frapples", "Mexico City"),
(00007, "Walter Melon", "Amsterdam"),
(00008, "Shonda Leer", "São Paulo");

INSERT INTO lab_mysql.Invoices(invoiceNumber, date, Salespersons_idSalespersons, Customers_idCustomers, Cars_idCar) VALUES
("852399038", "22-08-2018", 00004, 20001, 1)
("731166526", "31-12-2018", 00006, 10001, 4)
("852399038", "22-01-2019", 00008, 30001, 3);







