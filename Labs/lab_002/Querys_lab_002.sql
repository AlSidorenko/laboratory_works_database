# use lab_work_002

	-- Полная выборка данных из одной таблицы
SELECT * FROM  Врачи;

	-- Выбор отдельных полей таблицы.
select Name, Position from Врачи;
select Name as FIO, Position as Occupation from Врачи;
select distinct CabinetNo from Врачи;

	-- Использование условий отбора
select Name from Врачи where CabinetNo='104';
select Name from Врачи where CabinetNo='103' or CabinetNo='104';
select Name from Врачи where CabinetNo in ('103','104');
select Name from Врачи where CabinetNo between '101' and '103';
select Name from Врачи where Name LIKE 'П%';

	-- Использование агрегирующих функций
select sum(Salary) from Врачи;
select count(*) from Врачи;

	-- Сортировка
select Name from Врачи order by 1;
select Name from Врачи order by CabinetNo;
select Name from Врачи order by 1 limit 3;