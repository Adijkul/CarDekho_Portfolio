SELECT * FROM cars.car_dekho;
use cars;
-- Read Data --
select * from car_dekho;
-- Total Cars: to get a count of total records --
select count(*) from car_dekho;
-- The maneger asked the employee how many cars will be avaliable in 2023? --
select count(*) from car_dekho where year = 2023;
-- The manager asked employee how many cars is avaliable in 2020, 2021, 2022 --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- Group by --
select count(*) from car_dekho where year in (2020,2021,2023) group by year;
-- Client asked me to print the total of all cars by year. I don't see the all result --
select year, count(*) from car_dekho group by year;
-- Client asked to dealer agent how many diesel cars will there be in 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";


-- Client requested a car dealer agent how many petrol cars will there be in 2020? --
select count(*) from car_dekho where fuel = 'petrol' and year = '2020'; #51

-- The manager told the employee to give a print all the fuel cars (petrol, diesel and cng) come by all years --
select year, count(*) from car_dekho where fuel = 'petrol' group by year;
select year, count(*) from car_dekho where fuel = 'diesel' group by year;
select year, count(*) from car_dekho where fuel = 'cng' group by year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars? --
select year, count(*) from car_dekho group by year having count(*)>100;

-- The manager said employe all cars count details between 2015 and 2023 we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said employe all cars details between 2015 to 2023 we need complete list --
select * from car_dekho where year between 2015 and 2023;

-- END --