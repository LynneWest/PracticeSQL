--Left outer join that selects all customers and any associated order numbers
SELECT FirstName, LastName, OrderID
FROM CUSTOMER LEFT OUTER JOIN [ORDER]
	ON CUSTOMER.CustomerID = [ORDER].CustomerID