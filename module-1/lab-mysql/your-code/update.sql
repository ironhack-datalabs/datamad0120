UPDATE `lab-mysql`.`Salespersons` 
	SET `Store` = 'Miami' WHERE (`ID` = '5');
UPDATE Customers
	SET `Email` = 'ppicasso@gmail.com' WHERE ID = "1";
UPDATE Customers
	SET `Email` = 'lincoln@us.gov' WHERE ID = "2";

UPDATE Customers
	SET `Email` = 'hello@napoleon.me' WHERE ID = "3";

DELETE from Cars WHERE ID = "5";
	