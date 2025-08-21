--1 �ʴ����ͻ������Թ��� �����Թ��� ��� �Ҥ��Թ���
--CARTESIAN PRODUCT ������§������� WHERE
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

select e.EmployeeID,FirstName
from Employees e join Orders o on e.EmployeeID=e.EmployeeID
order by EmployeeID
--JOIN Operator
SELECT O.OrderID �Ţ���觫���, C.CompanyName �١���,
E.FirstName ��ѡ�ҹ, O.ShipAddress ��价��
FROM Orders O
join Customers C on O.CustomerID=C.CustomerID
join Employees E on O.EmployeeID=E.EmployeeID
--��ͧ��� ���ʾ�ѡ�ҹ ���;�ѡ�ҹ �ӹǹ���觫��ͷ������Ǣ�ͧ ������ͧ��Ң���㹻� 1998
select e.EmployeeID, FirstName , count(*) as [�ӹǹ order], sum(freight) as [Sum of Freight]
from Employees e join Orders o on e.EmployeeID = o.EmployeeID
where year(orderdate) = 1998
group by e.EmployeeID, FirstName
--��ͧ��ê��ͺ���ѷ���� ��Шӹǹ���觫��ͷ������Ǣ�ͧ
select s.CompanyName,COUNT(*)�ӹǹorder
from Shippers s join Orders o on s. ShipperID=o.ShipVia
group by s.CompanyName
order by 2 desc
--��ͧ��������Թ��� �����Թ��� ��Шӹǹ������������� 
select p.ProductID,p.ProductName,sum(Quantity)�ӹǹ�������
from Products p join [Order Details]od on p.ProductID=od.ProductID
group by p.ProductID, p.ProductName
--��ͧ��������Թ��� �����Թ��� ��� Nancy ����� ������ ���§����ӴѺ�����Թ���
select distinct p.ProductID,p.ProductName
from Employees e join Orders o on e.EmployeeID=o.EmployeeID
				 join [Order Details]od on o.OrderID=od.OrderID
				 join Products p on p.ProductID=od.ProductID
where e.FirstName ='Nancy'
order by ProductID
--��ͧ��ê��ͺ���ѷ�١��Ҫ��� Around the Horn �����Թ��ҷ���Ҩҡ��������ú�ҧ
select distinct s.Country
from Customers c join Orders o on c.CustomerID=o.CustomerID
				 join [Order Details] od on o.OrderID=od.OrderID
				 join Products p on p.ProductID=od.ProductID
				 join Suppliers s on s.SupplierID=p.SupplierID
where c.CompanyName ='Around the Horn'
