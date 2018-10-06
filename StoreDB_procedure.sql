--Create stored procedure for adding a new order
CREATE PROCEDURE NewOrder @cust_id INT 
AS
--insert new order into ORDER
INSERT INTO [ORDER](CustomerID, OrderDate)
VALUES(@cust_id, GETDATE())
--return order_num
SELECT OrderID = @@IDENTITY;