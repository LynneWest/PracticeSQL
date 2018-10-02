--Add rows to Store DB
INSERT INTO CUSTOMER
	(FirstName, LastName, Street, City, [State], ZipCode)
	VALUES ('Maya', 'Jones', '755 Johnson Avenue', 'Paso Robles', 'CA', '93447');

INSERT INTO CUSTOMER
	(FirstName, LastName, Street, City, [State], ZipCode)
	VALUES ('Annie', 'Rodgers', '1654 Vineyard Street', 'San Luis Obispo', 'CA', '93401');

INSERT INTO CUSTOMER
	(FirstName, LastName, Street, City, [State], ZipCode)
	VALUES ('Catherine', 'Giumini', '22670 Encina Avenue', 'Atascadero', 'CA', '93422');

INSERT INTO CUSTOMER
	(FirstName, LastName, Street, City, [State], ZipCode)
	VALUES ('Issac', 'Brock', '5475 Wilson Court', 'San Luis Obispo', 'CA', '93401');

INSERT INTO CUSTOMER
	(FirstName, LastName, Street, City, [State], ZipCode)
	VALUES ('Carter', 'Henderson', '1355 Phillips Lane', 'Santa Maria', 'CA', '93543');

INSERT INTO [ORDER]
	(CustomerID, OrderDate, ShipDate)
	VALUES ('3', '2018-04-21', '2018-04-25');

INSERT INTO [ORDER]
	(CustomerID, OrderDate, ShipDate)
	VALUES ('4', '2018-03-23', '2018-03-27');

INSERT INTO [ORDER]
	(CustomerID, OrderDate, ShipDate)
	VALUES ('5', '2018-05-02', '2018-05-05');

INSERT INTO [ORDER]
	(CustomerID, OrderDate, ShipDate)
	VALUES ('6', '2018-01-16', '2018-01-17');

INSERT INTO [ORDER]
	(CustomerID, OrderDate, ShipDate)
	VALUES ('7', '2018-07-02', '2018-07-06');

INSERT INTO ITEM
	(Description, UnitCost)
	VALUES ('Shovel', 19.99);

INSERT INTO ITEM
	(Description, UnitCost)
	VALUES ('Trowel', 7.99);

INSERT INTO ITEM
	(Description, UnitCost)
	VALUES ('Small Gloves', 9.99);

INSERT INTO ITEM
	(Description, UnitCost)
	VALUES ('Post Hole Digger', 29.99);

INSERT INTO ITEM
	(Description, UnitCost)
	VALUES ('Hose', 27.99);

INSERT INTO ITEM
	(Description, UnitCost)
	VALUES ('Hand Rake', 8.99);

INSERT INTO ITEM
	(Description, UnitCost)
	VALUES ('Leaf Rake', 14.99);

INSERT INTO ORDER_LINE_ITEM
	(OrderID, LineNumber, ItemNumber, Quantity, LineTotal)
	VALUES(1002, '3', 503, 3, 23.97);

INSERT INTO ORDER_LINE_ITEM
	(OrderID, LineNumber, ItemNumber, Quantity, LineTotal)
	VALUES(1003, '1', 502, 2, 39.98);

INSERT INTO ORDER_LINE_ITEM
	(OrderID, LineNumber, ItemNumber, Quantity, LineTotal)
	VALUES(1004, '6', 505, 1, 29.99);

INSERT INTO ORDER_LINE_ITEM
	(OrderID, LineNumber, ItemNumber, Quantity, LineTotal)
	VALUES(1005, '2', 504, 1, 9.99);

INSERT INTO ORDER_LINE_ITEM
	(OrderID, LineNumber, ItemNumber, Quantity, LineTotal)
	VALUES(1006, '4', 506, 1, 27.99);
