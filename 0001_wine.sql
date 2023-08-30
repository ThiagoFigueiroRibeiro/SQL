/* 

0001 - Adega. This is an exercise from my Database class. 
We must create a table called "Adega" (Wine house) with some columns.
Then, the "dep" collumn from Adega must be turned into the Primary Key.
Finally, we must insert several values to the table.
Additionally, we must ask the table simple queries like "Give me the vinho and produtor values from the adega table where dep is 72", for instance.

*/

CREATE TABLE adega 						-- Creating the table
(dep NUMBER(2,0) NOT NULL,
vinho VARCHAR2(20) NOT NULL,
produtor VARCHAR2(20) NOT NULL,
ano NUMBER (4,0) NOT NULL,
garrafas NUMBER(2,0) NOT NULL,
pronto NUMBER (4,0) NOT NULL)

\

ALTER TABLE adega						-- Defining 'dep' as adega's primary key. 
ADD CONSTRAINT pk_adega PRIMARY KEY (dep)
USING INDEX

\

INSERT INTO adega VALUES (2,'Chardonay','Buena Vista', 1997, 1, 1999)      -- Inserting values into the table.
INSERT INTO adega VALUES (3,'Chardonay','Geyser Peak', 1997, 5, 1999)
INSERT INTO adega VALUES (6,'Chardonay','Simi', 1996, 4, 1998)
INSERT INTO adega VALUES (12,'John Riesling','Jekel', 1998, 1, 1999)
INSERT INTO adega VALUES (21,'Fumé Blanc','Ch. St. Jean', 1997, 4, 1999)
INSERT INTO adega VALUES (22,'Fumé Blanc','Robt. Mondavi', 1996, 2, 1998)
INSERT INTO adega VALUES (30,'Gewurztraminer','Ch. St. Jean', 1998, 3, 1999)
INSERT INTO adega VALUES (43,'Cab. Sauvignon','Windsor', 1991, 12, 2000)
INSERT INTO adega VALUES (45,'Cab. Sauvignon','Geyser Peak', 1994, 12, 2002)
INSERT INTO adega VALUES (48,'Cab. Sauvignon','Robt. Mondavi', 1993, 12, 2004)
INSERT INTO adega VALUES (50,'Pinot Noir','Gary Farrel', 1996, 3, 1999)
INSERT INTO adega VALUES (51,'Pinot Noir','Fetzer', 1993, 3, 2000)
INSERT INTO adega VALUES (52,'Pinot Noir','Dehlinger', 1995, 2, 1998)
INSERT INTO adega VALUES (58,'Merlot','Clos du Bois', 1994, 9, 2000)
INSERT INTO adega VALUES (64,'Zinfandel','Cline', 1994, 9, 2003)
INSERT INTO adega VALUES (72,'Zinfandel','Rafanelli', 1995, 2, 2003)

/* Question 1 */
SELECT vinho, produtor
FROM adega
WHERE dep = 72

/* Question 2 */
SELECT vinho, produtor
FROM adega
WHERE ano > 1996

/* Question 3 */
SELECT dep, vinho, ano
FROM adega
WHERE pronto < 1999

/* Question 4 */
SELECT vinho, dep, ano
FROM adega
WHERE produtor ='Robt. Mondavi'
AND garrafas > 6