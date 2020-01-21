INSERT INTO Cars(vehicleid , year, model, manufacturer,color) 
	VALUES 
		("3K096I98581DHSNUP", "2019", "Tiguan", "Volkswagen", "Blue"),
		("ZM8G7BEUQZ97IH46V", "2019", "Rifter", "Peugeot", "Red"),
		("RKXVNNIHLVVZOUB4M", "2019", "Fusion", "Ford", "White"),
		("HKNDGS7CU31E9Z7JW", "2018", "RAV4", "Toyota", "Silver"),
		("DAM41UDN3CHU2WVF6", "2019", "V60 Cross Country", "Volvo", "Gray"),
		("DAM41UDN3CHU2WVF6", "2019", "V60", "Volvo", "Gray");


INSERT INTO Customers(customerid, name, phone, email, address, city, state, country, zip) 
	VALUES 
		("10001", "Pablo Picasso","+34 636 17 63 82","-", "Paseo de la Chopera, 14","Madrid", "Madrid", "Spain", "28045"),
		("20001","Abraham Lincoln","+1 305 907 7086", "-", "120 SW 8th St", "Miami","Florida","United States","33130"),
		("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00" ,"-" , "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");


INSERT INTO Salespersons (staff, name, store)
	VALUES
		("00001","Petey Cruiser", "Madrid"),
        ("00002","Anna Sthesia","Barcelona"),
        ("00003","Paul Molive","Berlin"),
        ("00004","Gail Forcewind","Paris"),
        ("00005","Paige Turner","Mimia"),
        ("00006","Bob Frapples","Mexico City"),
        ("00007","Walter Melon","Amsterdam"),
        ("00008","Shonda Leer","São Paulo");
   
 INSERT INTO Invoices (InvoiceID, date, car, customer,salesperson)
	VALUES
		("852399038","2018-08-22","0","1","3"),
        ("731166526","2018-12-31","3","0","5"),
        ("271135104","2018-01-22","2","2","7");
        
        