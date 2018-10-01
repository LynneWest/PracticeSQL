--Create tables for Store DB in MS SQL Server
CREATE TABLE CUSTOMER (
	CustomerID	Int	NOT NULL IDENTITY(1,1),
	FirstName	Varchar(25)	NULL,
	LastName	Varchar(25) NOT NULL,
	Street		Varchar(35)	NOT NULL,
	City		Varchar(35) NOT NULL,
	[State]		Char(2)		NOT NULL,
	ZipCode		Char(5)		NOT NULL,
	CONSTRAINT	CustomerPK	PRIMARY KEY(CustomerID)
	);

CREATE TABLE [ORDER] (
	OrderID		Int				NOT NULL IDENTITY(1000,1),
	CustomerID	Int				NOT NULL,
	OrderDate	Date			NULL,
	ShipDate	Date			NULL,
	OrderTotal	Numeric(8,2)	NULL,
	CONSTRAINT  OrderPK	PRIMARY KEY(OrderID),
	CONSTRAINT	CustomerFK	FOREIGN KEY(CustomerID)
				REFERENCES	CUSTOMER(CustomerID)
	);

CREATE TABLE ITEM (
	ItemNumber		Int				NOT NULL	IDENTITY(500,1),
	[Description]	Varchar(1000)	NULL,
	UnitCost		Numeric(8,2)	NOT NULL,
	CONSTRAINT	ItemNumberPK	PRIMARY KEY(ItemNumber)
	);

CREATE TABLE ORDER_LINE_ITEM (
	OrderID		Int				NOT NULL,
	LineNumber	Char(3)			NOT NULL,
	ItemNumber	Int				NOT NULL,
	Quantity	Numeric(3)		NOT NULL,
	LineTotal	Numeric(8,2)	NOT NULL,
	CONSTRAINT OrderID_LineNumberAK	UNIQUE(OrderID,LineNumber),
	CONSTRAINT OrderIDFK	FOREIGN KEY(OrderID)
				REFERENCES	[ORDER](OrderID),
	CONSTRAINT ItemNumberFK	FOREIGN KEY(ItemNumber)
				REFERENCES ITEM(ItemNumber)
	);