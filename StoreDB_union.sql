--UNION operator to report items that cost more than $28 and less than $9
SELECT ItemNumber, UnitCost
FROM ITEM
WHERE UnitCost > 28
UNION
SELECT ItemNumber, UnitCost
FROM ITEM
WHERE UnitCost < 9
ORDER BY ItemNumber;