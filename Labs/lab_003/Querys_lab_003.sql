#1
select N_dog from Врачи
    where N_dog IN (
Select D_dog from Журнал 
where date between '2020-11-01' and '2020-11-04');

#2
select N_dog from Врачи
	where N_dog = ANY (
Select D_dog from Журнал 
where date between '2020-11-01' and '2020-11-07');

#3
select N_dog from Врачи a
  where exists (
Select * from Журнал 
where date between '2020-11-01' and '2020-11-03'
and N_dog);

#4
SELECT Name, Salary FROM Врачи
	WHERE Salary <= ALL 
		(SELECT Salary FROM Врачи);

#5
SELECT Name, Salary FROM Врачи 
	WHERE Salary =  
		(SELECT MIN(Salary) FROM Врачи);
		
	-- Группировка запросов
#6
SELECT D_dog, SUM(D_dog) AS Dog_total 
FROM Журнал
	GROUP BY D_dog;
	
#7
SELECT D_dog, SUM(D_dog) AS Dog_total 
FROM Журнал
	GROUP BY D_dog
	HAVING COUNT(D_dog)>=1;

#8
SELECT D_dog, SUM(D_dog) AS Dog_total 
FROM Журнал
	GROUP BY D_dog
	HAVING COUNT(D_dog)>=2;

#9
SELECT CONCAT('Журнал № ',
               CONVERT(D_dog, CHAR), 
               ' на сумму ') AS "Номер", 
       SUM(D_dog) AS "Сумма" FROM Журнал
GROUP BY D_dog
UNION
SELECT 'ИТОГО: ', SUM(D_Dog) FROM Журнал ORDER BY 1;


	-- Выборка из нескольких таблиц
#10
SELECT Name, N_dog, D_dog  
FROM Врачи a, Журнал b
		WHERE a.N_dog=b.D_dog;
	
#11
SELECT Name, N_dog, D_dog  
FROM Врачи a JOIN Журнал b ON a.N_Dog=b.D_Dog;

#12
SELECT Name, N_dog, D_dog
FROM Врачи a LEFT JOIN Журнал b ON     
    a.N_Dog=b.D_Dog;
	
#13
SELECT Name, N_Dog, D_dog  
	FROM Врачи f, Журнал c;