-- Asian Population
-- Oracle

select SUM(population) from city where countrycode in
    (select code from country where continent='Asia');

OR 

select SUM(ct.population) from city ct 
inner join country cr
on ct.countrycode=cr.code
where cr.continent='Asia';

-- African Cities
-- oracle
select ct.name from city ct
inner join country cr
on cr.code=ct.countrycode
where cr.continent='Africa';

-- Average Population of Each Continent
-- orcale
select cr.continent, ROUND(AVG(ct.population)-0.5) from city ct
inner join country cr
on cr.code=ct.countrycode
group by cr.continent;


-- The report
select 
   if(Grades.Grade < 8, concat('NULL'),Students.Name), 
   Grades.Grade, 
   Students.Marks 
   from Students 
   inner join Grades 
   on Students.Marks >= Grades.Min_Mark 
   and Students.Marks <= Grades.Max_Mark 
   group by 
   Grades.Grade desc, 
   Students.Name, Students.Marks asc
