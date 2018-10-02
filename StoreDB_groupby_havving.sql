--GROUP BY and HAVING clauses
SELECT ItemNumber, Count(*) AS TotalOrdered
FROM ORDER_LINE_ITEM
GROUP BY ItemNumber
HAVING Count(*) > 2;