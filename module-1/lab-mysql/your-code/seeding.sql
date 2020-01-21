#SET SQL_SAFE_UPDATES=0;
	#DELETE FROM Cars;
#SET SQL_SAFE_UPDATES=1;

/*
INSERT INTO Cars (CarID, VIN, Manufacturer, Model, Year, Color)
	VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'), (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'), (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'), (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'), (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'), (5, 'DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray')
*/

#ALTER TABLE Customers
#ADD custInd INT;
	

INSERT INTO Customers (custInd, CustomerID, Name, PhoneNumber, Email, Adress, City, State/Province, country, zipCode)
	VALUES (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045), (1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130), (2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008)


#Esto ultimo me da error por el / en la variable State/Province










