DROP DATABASE IF EXISTS kukkatietokanta;
CREATE DATABASE kukkatietokanta;
USE kukkatietokanta;

CREATE TABLE kukka(
    kukanTunniste INT PRIMARY KEY,
    laji VARCHAR(17),
    lukumaara INT,
    viljelika VARCHAR(29),
    Kappalehinta INT
);


SELECT * FROM kukka;


select current_user();
CREATE USER IF NOT EXISTS 'aili'@'localhost' identified by 'mDZGVH7G';


 GRANT ALL PRIVILEGES ON kukkatietokanta.* TO 'aili'@'localhost';

select user,host from mysql.user;



INSERT INTO kukka VALUES(2,'orvokki',5,'Rosamunda',10);
SELECT * FROM kukka;

INSERT INTO kukka VALUES(5,'kielo',13,'Orvokin taimitarha',4);
SELECT * FROM kukka;

INSERT INTO kukka VALUES(1,'jalkasieni',15,'Rovaniemen ruusut oy',2);
SELECT * FROM kukka;

INSERT INTO kukka VALUES(7,'herkkusieni',10,'Raul Rihmasto ry',3);
SELECT * FROM kukka;

INSERT INTO kukka VALUES(6,'ruusu',30,'Kielo ja kumppanit',6);
SELECT * FROM kukka;

INSERT INTO kukka VALUES(3,'kehäkukka',150,'Sienirihma oy',8);
SELECT * FROM kukka;

INSERT INTO kukka VALUES(4,'tulppaani',20,'Vihervarvas Oy',7);
SELECT * FROM kukka;


-- Tietojen haku

SELECT * FROM kukka;

SELECT  
kukanTunniste,lukumaara, kappalehinta
FROM kukka;

SELECT * FROM kukka
WHERE laji = 'herkkusieni';

SELECT * FROM kukka
WHERE viljelija = 'Orvokin taimitarha';

SELECT * FROM kukka
WHERE lukumaara = 1;

UPDATE kukka
SET lukumaara = 25,
    kappalehinta = 3
WHERE KukanTunniste = 2;

UPDATE kukka
SET Laji = 'kielo',
    lukumaara = 10
WHERE KukanTunniste = 6;

UPDATE kukka
SET Lukumaara = 15,
laji = 'ruusu',
viljelija = 'Orvokin taimitarha'
WHERE KukanTunniste = 5;


UPDATE kukka
SET Laji = 'kielo',
lukumaara = 100,
viljelija = 'Raul Rihmasto ry'
WHERE KukanTunniste = 3;

DELETE FROM kukka
WHERE kukanTunniste = 5;

DELETE FROM kukka
WHERE kukanTunniste = 1;

DELETE FROM kukka
WHERE lukumaara = 1;

DELETE FROM kukka
WHERE viljelija = 'Vihervarvas Oy' OR kappalehinta = 6;

DELETE FROM kukka
WHERE viljelija = 'Kielo ja kumppanit'  AND
    Kappalehinta = 2 AND
    lukumaara = 10;



select * FROM kukka;