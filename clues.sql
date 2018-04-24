SELECT name, population, code FROM country WHERE
region = 'Southern Europe'
ORDER BY
population;

answer: Holy See (Vatican City State)
             name              | population | code
-------------------------------+------------+------
 Holy See (Vatican City State) |       1000 | VAT
 Gibraltar                     |      25000 | GIB
 San Marino                    |      27000 | SMR
 Andorra                       |      78000 | AND
 Malta                         |     380200 | MLT
 Slovenia                      |    1987800 | SVN
 Macedonia                     |    2024000 | MKD
 Albania                       |    3401200 | ALB
 Bosnia and Herzegovina        |    3972000 | BIH
 Croatia                       |    4473000 | HRV
 Portugal                      |    9997600 | PRT
 Greece                        |   10545700 | GRC
 Yugoslavia                    |   10640000 | YUG
 Spain                         |   39441700 | ESP
 Italy                         |   57680000 | ITA
(15 rows)

SELECT language
FROM countrylanguage
WHERE countrycode = 'VAT' AND
isofficial = true;

answer
 language
----------
 Italian
(1 row)

SELECT countrycode
FROM countrylanguage
WHERE language = 'Italian' AND
percentage = 100;

answer:
 countrycode
-------------
 SMR
(1 row)

SELECT name
FROM country
WHERE code = 'SMR';

answer:
    name
------------
 San Marino
(1 row)

SELECT name
FROM city
WHERE countrycode = 'SMR';

answer: 
    name
------------
 Serravalle
 San Marino
(2 rows)

SELECT name, countrycode
FROM city
WHERE name LIKE '%Serra%';

answer:
         name         | countrycode
----------------------+-------------
 Serra                | BRA
 Tabo�o da Serra      | BRA
 Itapecerica da Serra | BRA
 Serravalle           | SMR
(4 rows)

SELECT name
FROM country
WHERE code = 'BRA';

answer:
  name
--------
 Brazil
(1 row)

SELECT capital
FROM country
WHERE name = 'Brazil';

answer: 
 capital
---------
     211
(1 row)

SELECT name
FROM city
WHERE population = 91084;

answer:
     name
--------------
 Santa Monica
(1 row)