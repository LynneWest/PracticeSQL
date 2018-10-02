--Subquery on Store DB to find total revenue from hose sales
SELECT SUM(LineTotal) AS HoseRevenue
FROM ORDER_LINE_ITEM
WHERE ItemNumber IN
	(SELECT ItemNumber
	FROM ITEM
	WHERE Description = 'Hose'
	);