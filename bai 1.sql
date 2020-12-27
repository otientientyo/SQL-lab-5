USE AdventureWorks2019
--Lay ra du lieu cua bang ContactType co ContactTypeID>=0 va <=10
SELECT * FROM Person.ContactType
WHERE ContactTypeID>00 AND ContactTypeID<=10

--Lay ra du lieu trong bang ContactType co ContactTypeID trong khoang [10,15]
SELECT * From Person.ContactType
WHERE ContactTypeID BETWEEN 10 AND 15

--Lay ra nhung ContactType co Name ket thuc bang ky tu e
SELECT * FROM Person.ContactType
WHERE Name LIKE '%e'

--Lấy ra các ContactType có ký tự đầu là T hoặc R và có kết thúc là e
SELECT * FROM Person.ContactType
WHERE Name Like '[TR]%e'

--Lấy ra contact có Name có 4 ký tự bắt đầu bởi ký tự R hoặc A kết thúc với ký tự e
SELECT * FROM Person.ContactType
WHERE Name LIKE '[RA]__e'

-- Sử dụng INNER JOIN  
SELECT *
	FROM Person.ContactType INNER JOIN HumanResources.Employee ON
		Person.ContactType.ContactTypeID=HumanResources.Employee.CurrentFlag
	SELECT Title, COUNT(*) [Title Number]
	FROM Person.ContactType
	WHERE Title LIKE 'Mr%'
	GROUP BY  ALL Title
