--Sub Query
--ต้องการข้อข้อมูลคนที่มีตำแหน่งเดียว Nancy
-----1.หาตำแหน่งของ Nancy ก่อน
Select title from Employees where firstName =' nancy'
-----2.หาข้อมูลคนที่มีตำแหน่งเดียวกับข้อ 1
select*from Employees
where Title = (Select title
from Employees
where FirstName = 'nancy')

Select firstname, Lastname from Employees
Where BirthDate = ('Nancy')
--ต้องการซื้อสินค้าที่มีราคามากกว่าสินค้า Ikura
Select companyName
from customers
where city = (select city from products
              where companyName = 'Ikura')

--ต้องการชื่อบริษัทลูกค้าที่อยู่เมืองเดียวกับบริษัทชื่อ Around the Horn
Select companyName from customers
where city = (select city from Customers
              where companyName = 'Around the Horn')

---ต้องการชื่อนามสกุลพนักงานที่เข้างานคนมากที่สุด
select FirstName, LastName from Employees
Where HireDate = (Select Max(HireDate) from Employees)

---7.ข้อมูลใบสั่งที่ถุกส่งไปต่างประเทศที่ไม่มีผู้ผลิตสินค้าตั้งอยู่
Select*from orders
Where Shipcountry not in(Select distinct country from Suppliers)

---ต้องการใส่ตัวเลขลำดับ
---ต้องการข้อมูลสินค้าที่มีราคาน้อยกว่า 50$
select Row_NUMBER () over (order by unitPrice desc) as rownum,productName, Unitprice
from products
where Unitprice< 50

-- คำสั่ง DMl (Insert Update Delete)
Select *from shippers
----------คำสั่ง Insert เพิ่มข้อมูล
--ตาราง มีpk เป็น AutoIncrement (AutoNumber)
Insert into shippers
VALUES('บริษัทขนเยอะจำกัด','081-12345678')


Select* from customers
--ตารางที่มี pk เป็น char,nChar
insert into customers(CustomerID,CompanyName)
VALUES ('A0001','บริษัทซื้อเยอะจำกัด')


select *from Employees
---ต้องการข้อมุล รหัสและชื่อพนักงาน และรหัสและชื่อหัวหน้าพนักงาน
Select emp.EmployeeID, emp.FirstName ชื่อพนักงาน,
       boss.EmployeeID, boss.FirstName ชือหัวหน้า
from Employees emp join Employees boss
on emp.Reportsto = boss.EmployeeID


--จงเพิ่มข้อมูลพนักงาน 1 คน (ใส่ข้อมูลเท่าที่มี)
Insert into Employees(firstName,LastName)
values ('วุ้นเส้น','เขมรสกุล')

--จงเพิ่มสินค้า ปลาแดกบอง ราคาา1.5$ จำนวน 12
Insert into products(productName,UnitPrice, UnitsInStock)
VALUES('ปลาแดกบอง',1.5,12)

select*from products

---------------คำสั่ง Update ปรับปรุงข้อมุล
--ปรับปรุงเบอร์โทรศัพท์ของบริษัทขนส่ง รหัส 6
Update Shippers
set  Phone= '085-999999'
where  ShipperID = 6

Select* from Shippers
--ปรับปรุงจำนวนสินค้าคงเหลือสินค้ารหัส 1 เพิ่มจำนวนเข้าไป 100 ชิ้น
UPDATE products
set UnitsInstock = UnitsInStock+100
where productID = 1

--ปรับปรุง เมือง และ ประเทศลูกค้า รหัส A0001 ให้เป็นอุดรธานี,thailand
Update customers
set City = 'อุดรธาณี ',country = 'thailand'
Where customerID = 'A0001'

select * from Customers



