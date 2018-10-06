--Calculate OrderTotal column values using joins with aggregate functions
UPDATE [ORDER]
SET [ORDER].OrderTotal = total.temp
FROM [ORDER]
	INNER JOIN (	SELECT ORDER_LINE_ITEM.OrderID, SUM(UnitCost * Quantity) AS temp
					FROM ORDER_LINE_ITEM INNER JOIN ITEM
						ON ITEM.ItemNumber = ORDER_LINE_ITEM.ItemNumber
						GROUP BY ORDER_LINE_ITEM.OrderID) AS total
		ON [ORDER].OrderID = total.OrderID;