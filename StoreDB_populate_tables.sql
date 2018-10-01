INSERT INTO CUSTOMER
	(FirstName, LastName, Street, City, [State], ZipCode)
	VALUES ('Cameron', 'Grimes', '22755 Grove Street', 'Atascadero', 'CA', '93422');

INSERT INTO CUSTOMER
	(FirstName, LastName, Street, City, [State], ZipCode)
	VALUES ('Ashley', 'Rodriguez', '655 Monterey Street', 'San Luis Obispo', 'CA', '93405');

INSERT INTO [ORDER]
	(CustomerID, OrderDate, ShipDate)
	VALUES ('1', '2018-06-20', '2018-06-25');

INSERT INTO [ORDER]
	(CustomerID, OrderDate, ShipDate)
	VALUES ('2', '2018-06-27', '2018-07-01');

INSERT INTO ITEM
	(Description, UnitCost)
	VALUES ('Heavy Duty Rake', 29.99);

INSERT INTO ITEM
	(Description, UnitCost)
	VALUES ('Watering Can', 17.99);

INSERT INTO ORDER_LINE_ITEM
	(OrderID, LineNumber, ItemNumber, Quantity, LineTotal)
	VALUES(1000, '2', 500, 1, 29.99);

INSERT INTO ORDER_LINE_ITEM
	(OrderID, LineNumber, ItemNumber, Quantity, LineTotal)
	VALUES(1001, '1', 501, 1, 17.99);