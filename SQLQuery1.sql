--1 �ʴ����ͻ������Թ��� �����Թ��� ��� �Ҥ��Թ���
--CARTESIAN PRODUCT ������§��� ���� WHERE
Select CategoryName, ProductName, UnitPrice
From Products as P, Categories as C
where P.CategoryID=C.CategoryID
and categoryName = 'seafood'

--JOIN OPERATOR ������§������� FROM...ON...
Select CategoryName, ProductName,UnitPrice
From Products as P Join Categories as C
On P.CategoryID=C.CategoryID
where categoryName = 'seafood'

--���ʴ������������Ţ���觫��� ��Ъ��ͺ���ѷ �����Թ���
Select CompanyName, OrderID
FROM Orders, Shippers
WHERE Shippers.ShipperID = Orders.Shipvia

Select CompanyName, OrderID
FROM Orders join Shippers
ON Shippers.ShipperID = Orders.Shipvia

--���ʴ������������Ţ���觫�����Ъ��ͺ���ѷ�����Թ��Ңͧ���觫��������Ţ 10275
--Cartesian Product
SELECT CompanyName, OrderID
FROM Orders, Shippers
WHERE Shippers.ShipperID = Orders.Shipvia
AND OrderID = 10275

--Join Operator
SELECT CompanyName, OrderID
FROM Orders JOIN Shippers
ON Shippers.ShipperID=Orders.Shipvia
WHERE OrderID=10275

select p.ProductID,p.ProductName,s.CompanyName,s.Country
from Products p join Suppliers s on p.SupplierID = p.SupplierID
where Country in ('usa','uk')   
--��ͧ������ʾ�ѡ�ҹ ���;�ѡ�ҹ �������觫��ͷ������Ǣ�ͧ ���§����ӴѺ���ʾ�ѡ�ҹ
select e.Employees e join orders o on s.shipperID =o.shipVia


--��ͧ��������Թ��� �����Թ��� ����Թ��Ҩӹǹ�������������
select p.productID, p.productName, sum(Quantity) �ӹǹ�������
from products p jojn [order Details] od on p.productID = od.productID
group by p.productID, p.productName

--��ͧ��������Թ��� �����Թ��� ��� nancy ����� ������ ���§���







on p.categoryID = c.catgoryID
where categoryName = 'seafood'


