--Sub Query
--��ͧ��â�͢����Ť�����յ��˹����� Nancy
-----1.�ҵ��˹觢ͧ Nancy ��͹
Select title from Employees where firstName =' nancy'
-----2.�Ң����Ť�����յ��˹����ǡѺ��� 1
select*from Employees
where Title = (Select title
from Employees
where FirstName = 'nancy')

Select firstname, Lastname from Employees
Where BirthDate = ('Nancy')
--��ͧ��ë����Թ��ҷ�����Ҥ��ҡ�����Թ��� Ikura
Select companyName
from customers
where city = (select city from products
              where companyName = 'Ikura')

--��ͧ��ê��ͺ���ѷ�١��ҷ���������ͧ���ǡѺ����ѷ���� Around the Horn
Select companyName from customers
where city = (select city from Customers
              where companyName = 'Around the Horn')

---��ͧ��ê��͹��ʡ�ž�ѡ�ҹ�����ҧҹ���ҡ����ش
select FirstName, LastName from Employees
Where HireDate = (Select Max(HireDate) from Employees)

---7.���������觷��ء��仵�ҧ����ȷ������ռ���Ե�Թ��ҵ������
Select*from orders
Where Shipcountry not in(Select distinct country from Suppliers)

---��ͧ���������Ţ�ӴѺ
---��ͧ��â������Թ��ҷ�����Ҥҹ��¡��� 50$
select Row_NUMBER () over (order by unitPrice desc) as rownum,productName, Unitprice
from products
where Unitprice< 50

-- ����� DMl (Insert Update Delete)
Select *from shippers
----------����� Insert ����������
--���ҧ ��pk �� AutoIncrement (AutoNumber)
Insert into shippers
VALUES('����ѷ�����ШӡѴ','081-12345678')


Select* from customers
--���ҧ����� pk �� char,nChar
insert into customers(CustomerID,CompanyName)
VALUES ('A0001','����ѷ�������ШӡѴ')


select *from Employees
---��ͧ��â����� ������Ъ��;�ѡ�ҹ ���������Ъ������˹�Ҿ�ѡ�ҹ
Select emp.EmployeeID, emp.FirstName ���;�ѡ�ҹ,
       boss.EmployeeID, boss.FirstName ������˹��
from Employees emp join Employees boss
on emp.Reportsto = boss.EmployeeID


--�����������ž�ѡ�ҹ 1 �� (����������ҷ����)
Insert into Employees(firstName,LastName)
values ('������','���ʡ��')

--�������Թ��� ���ᴡ�ͧ �Ҥ��1.5$ �ӹǹ 12
Insert into products(productName,UnitPrice, UnitsInStock)
VALUES('���ᴡ�ͧ',1.5,12)

select*from products

---------------����� Update ��Ѻ��ا������
--��Ѻ��ا�������Ѿ��ͧ����ѷ���� ���� 6
Update Shippers
set  Phone= '085-999999'
where  ShipperID = 6

Select* from Shippers
--��Ѻ��ا�ӹǹ�Թ��Ҥ�������Թ������� 1 �����ӹǹ���� 100 ���
UPDATE products
set UnitsInstock = UnitsInStock+100
where productID = 1

--��Ѻ��ا ���ͧ ��� ������١��� ���� A0001 ������شøҹ�,thailand
Update customers
set City = '�شøҳ� ',country = 'thailand'
Where customerID = 'A0001'

select * from Customers



