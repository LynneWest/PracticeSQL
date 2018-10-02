--Create custom view for customer contact information
CREATE VIEW CustomerAddress AS
	SELECT	FirstName,
			LastName, 
			(Street + ', ' + City + ', ' + [State] +' ' + ZipCode) AS [Address]
	FROM CUSTOMER;
	