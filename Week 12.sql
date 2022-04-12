-- Create a relational database (2 tables)
CREATE DATABASE salon;

USE salon;

-- CREATE TABLE 1 - CUSTOMER DETAILS
CREATE TABLE CustomerDetails( 
CustomerNo INT NOT NULL,
CustomerName VARCHAR (20) NOT NULL, 
CustomerAge VARCHAR (20) NOT NULL, 
PRIMARY KEY (CustomerNo)
);

EXPLAIN CustomerDetails;

INSERT INTO CustomerDetails (CustomerNo, CustomerName, CustomerAge)
VALUES ('1', 'Shelly', '30'),
('2', 'Dani', '38'),
('3', 'Lila', '20'),
('4', 'Terri', '18'),
('5', 'Jane', '59'),
('6', 'Hannah', '46'),
('7', 'Bella', '23'),
('8', 'Danny', '36'),
('9', 'Orla', '90'),
('10', 'Hailey', '19');

-- Update a record
SELECT * FROM CustomerDetails;

UPDATE CustomerDetails
SET CustomerName = 'Trinity'
WHERE CustomerNo = 1;

-- Delete a record
SELECT * FROM CustomerDetails;

DELETE FROM CustomerDetails 
WHERE CustomerNo ='7';

-- CREATE TABLE 2 - ORDER DETAILS
CREATE TABLE OrderDetails(
OrderNo INT NOT NULL, 
CustomerNo INT NOT NULL,
OrderColour VARCHAR (20) NOT NULL, 
OrderLength VARCHAR (20) NOT NULL, 
OrderStyle VARCHAR (20), 
OrderPrice DECIMAL (8,2) NOT NULL, 
PRIMARY KEY (OrderNo)
);

EXPLAIN OrderDetails;

INSERT INTO OrderDetails (OrderNo, CustomerNo, OrderColour, OrderLength, OrderStyle, OrderPrice)
VALUES ('1','1', 'red', 'mid', 'wavy', '20'),
('2','2', 'blonde', 'short', 'bob', '10'),
('3','3', 'light brown', 'long', 'asymmetric', '15'),
('4','4', 'grey', 'mid', 'bob', '20'),
('5','5', 'blue', 'short', 'wavy', '10'),
('6','6', 'light blue', 'long', 'straight', '15'),
('7','7', 'lilac', 'long', 'pixie', '15'),
('8','8', 'ash blonde', 'ears', 'straight', '25'),
('9','9', 'blue grey', 'shoulder', 'wavy', '17'),
('10','10', 'rainbow', 'mid', 'asymmetric', '20');

-- Update a record
SELECT * FROM OrderDetails;

UPDATE OrderDetails
SET OrderColour = 'white'
WHERE OrderNo = 1;

-- Delete a record
SELECT * FROM OrderDetails;

DELETE FROM OrderDetails 
WHERE OrderNo ='7';

-- Join tables
SELECT CustomerDetails.CustomerNo, OrderDetails.OrderNo, CustomerDetails.CustomerName
FROM OrderDetails
INNER JOIN CustomerDetails ON OrderDetails.CustomerNo=CustomerDetails.CustomerNo;

-- Run a simple query (one field/column) searching one table.
SELECT * FROM OrderDetails
WHERE OrderStyle = "straight";

-- Run a complex query (more than one field/column) to demonstrate the relations between the 2 tables
SELECT * FROM OrderDetails
WHERE OrderStyle = "straight" AND OrderPrice = 15;

-- Retrieve all your data sorted in ascending order on an appropriate field (one table)
SELECT * FROM CustomerDetails
ORDER BY CustomerName;

-- Filter data using comparison operators (one table)
SELECT OrderNo FROM OrderDetails WHERE OrderPrice = '15';
