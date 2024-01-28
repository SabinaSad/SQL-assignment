use world;


#Task1 

#Using count, get the number of cities in the USA

select count(ID) from city where countryCode="USA";


#Task2    
 # Find out what the population and average life expectancy for people in Argentina (ARG)is

select population, lifeExpectancy,name from country where name="Argentina";


#Task3        
 # Using ORDER BY, LIMIT, what country has the highest life expectancy? 

select name, lifeExpectancy from country order by lifeExpectancy desc limit 1;

#Task4.  
#  Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.


select ID, Name, population from city limit 10;

#Task5          
# Select 25 cities around the world that start with the letter 'F' in a single SQL query.

select name from city where name like "F%" limit 25;

#Task6      
# Create a SQL statement to find only those cities from city table whose population is larger than 2000000.
    
select name from city where population > 2000000;

#Task7
# Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.​
Select name from city where name like "Be%";

#Task 8

# Create a SQL statement to find only those cities from city table whose population is 
#between 500000-1000000.
select name,population from city where population between 500000 and 1000000;

#Task 9
#Create a SQL statement to find a city with the lowest population in the city table.

select name, population from city order by population desc limit 1;

#Task 10
#Bonus 
#Create a SQL statement to find the capital of Spain (ESP)

select city.name from city join country on city.id=country.capital where country.name="Spain";

#Bonus
#Create a SQL statement to list all the languages spoken in the Caribbean region.

select language,region from countryLanguage join country
 on country.code=countryLanguage.CountryCode
 where country.region= "Caribbean";
 
 # Bonus
 #Create a SQL statement to find all cities from the Europe continent.
 select city.name, continent from city join country 
 on city.CountryCode=country.code where continent="Europe";





