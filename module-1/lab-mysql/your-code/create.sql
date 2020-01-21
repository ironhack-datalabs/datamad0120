USE lab_mysql;


CREATE TABLE `Customers` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_customer` int,
  `name` varchar(255),
  `phone` varchar(255),
  `email` varchar(255),
  `adress` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `country` varchar(255),
  `postal_code` varchar(255)
);

CREATE TABLE `Salesperson` (
  `id` int PRIMARY KEY,
  `id_staff` int,
  `name` varchar(255),
  `store` varchar(255)
);

CREATE TABLE `Car` (
  `id` int PRIMARY KEY,
  `vin` varchar(255),
  `model` varchar(255),
  `year` year,
  `color` varchar(255)
);

CREATE TABLE `Invoices` (
  `id` int PRIMARY KEY,
  `invoice_number` int,
  `date` datetime,
  `car` int,
  `customer` int,
  `salesperson` int
);

ALTER TABLE `Invoices` ADD FOREIGN KEY (`car`) REFERENCES `Car` (`id`);

ALTER TABLE `Invoices` ADD FOREIGN KEY (`customer`) REFERENCES `Customers` (`id`);

ALTER TABLE `Invoices` ADD FOREIGN KEY (`salesperson`) REFERENCES `Salesperson` (`id`);
