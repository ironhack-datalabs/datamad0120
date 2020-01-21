
INSERT INTO `lab_mysql`.`Vehicles`
	(`idVehicles`,
    `VINnumber`,
	`carManufacturer`,
	`carModel`,
	`carYear`,
	`carColor`)
VALUES
	(0,"3K096I98581DHSNUP",	"Volkswagen", "Tiguan","2019","Blue"),
	(1,"ZM8G7BEUQZ97IH46V",	"Peugeot",	"Rifter",	"2019",	"Red"),
	(2,"RKXVNNIHLVVZOUB4M",	"Ford",	"Fusion",	"2018",	"White"),
	(3,"HKNDGS7CU31E9Z7JW",	"Toyota",	"RAV4",	"2018",	"Silver"),
	(4,"DAM41UDN3CHU2WVF6",	"Volvo",	"V60",	"2019",	"Gray"),
	(5,"DAM41UDN3CHU2WVF6",	"Volvo",	"V60 Cross Country",	"2019",	"Gray");
 
 
 
INSERT INTO `lab_mysql`.`Customers`
	(`custName`,
	`custPhone`,
	`custMail`,
	`custAddress`,
	`custCity`,
	`custProvince`,
	`custCountry`,
	`custPostCode`)
VALUES
	("10001",	"Pablo Picasso",	"+34 636 17 63 82",	"-",	"Paseo de la Chopera, 14",	"Madrid",	"Madrid",	"Spain",	"28045"),
	("20001",	"Abraham Lincoln",	"+1 305 907 7086",	"-",	"120 SW 8th St",	"Miami",	"Florida",	"United States",	"33130"),
	("30001",	"Napoléon Bonaparte",	"+33 1 79 75 40 00",	"-",	"40 Rue du Colisée",	"Paris",	"Île-de-France",	"France",	"75008");



INSERT INTO `lab_mysql`.`Salespersons`
	(`staffID`,
	`staffName`,
	`staffStore`)
VALUES
	("00001",	"Petey Cruiser", "Madrid"),
	("00002",	"Anna Sthesia", "Barcelona"),
	("00003",	"Paul Molive", "Berlin"),
	("00004",	"Gail Forcewind", "Paris"),
	("00005",	"Paige Turner", "Mimia"),
	( "00006",	"Bob Frapples", "Mexico City"),
	( "00007",	"Walter Melon", "Amsterdam"),
	( "00008",	"Shonda Leer", "São Paulo");



INSERT INTO `lab_mysql`.`Invoices`
(`InvNumber`,
`invDate`,
`invCar`,
`invCustomer`,
`invSalesperson`)
VALUES
("852399038",	"2018-08-22",	"0",	"1",	"3"),
("731166526",	"2018-12-31",	"3",	"0",	"5"),
("271135104",	"2019-01-22",	"2",	"2",	"7");



