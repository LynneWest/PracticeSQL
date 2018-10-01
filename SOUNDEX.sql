-- find SOUNDEX values for cust_contact column in Customers table
SELECT cust_contact as name, SOUNDEX(cust_contact) as name_sound
FROM Customers;