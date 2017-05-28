SELECT ORDER.ORDERID AS ID , CUSTOMERS.CUSTOMERSNAME AS [CUSTOM NAME] , SHIPPERS.

SELECT Orders.OrderID as ID , Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
