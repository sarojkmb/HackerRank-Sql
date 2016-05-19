# Revising Aggregations - The Count Function
select count(*) from city where population>100000;

# Revising Aggregations - The Sum Function
select sum(population) from city where district='California';

# Revising Aggregations - Averages
select avg(population) from city where district='California';

# Add others



# Weather Observation Station 14
select ROUND(MAX(LAT_N),4) from station where LAT_N<137.2345;

# Weather Observation Station 15
select ROUND(LONG_W, 4) from station where LAT_N= (select MAX(LAT_N) from station where LAT_N<137.2345);

# Weather Observation Station 16
select ROUND(MIN(LAT_N),4) from station where LAT_N>38.7780;

# Weather Observation Station 17
select ROUND(LONG_W,4) from station where LAT_N = (select MIN(LAT_N) from station where LAT_N>38.7780);

# Weather Observation Station 18
SELECT ROUND(ABS(A - C) + ABS(B - D), 4)
FROM (
		SELECT MAX(LAT_N) AS A, MIN(LAT_N) AS B , MAX(LONG_W) AS C , MIN(LONG_W) AS D
		FROM STATION
	) as st ;











