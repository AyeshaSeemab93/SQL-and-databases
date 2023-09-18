DROP DATABASE IF EXISTS kukkatietokanta;
CREATE DATABASE kukkatietokantaa;
USE kukkatietokantaa;

CREATE TABLE kukka(
    KukanTunniste INT PRIMARY KEY,
    Laji VARCHAR(17),
    kasvupaikka VARCHAR(14),
    Kappalehinta INT,
    Lukumaara INT 
);


SELECT * FROM kukka;


select current_user();
CREATE USER IF NOT EXISTS 'janne'@'localhost' identified by 'BVjhxM0L';

 GRANT ALL PRIVILEGES ON kukkatietokantaa.* to 'janne'@'localhost';


select user,host from mysql.user;

show databases;


INSERT INTO kukka VALUES(4,'herkkusieni','aurinko',7,10);
SELECT * FROM kukka;

INSERT INTO kukka VALUES(2,'ruusu','kivikko',5,150);
SELECT * FROM kukka;
INSERT INTO kukka VALUES(1,'kehäkukka','varjo',10,1);
SELECT * FROM kukka;
INSERT INTO kukka VALUES(6,'kielo','kosteikko',4,100);
SELECT * FROM kukka;
INSERT INTO kukka VALUES(5,'jalkasieni','autotalli',8,5);
SELECT * FROM kukka;
INSERT INTO kukka VALUES(3,'orvokki','ämpäri',6,20);
SELECT * FROM kukka;
INSERT INTO kukka VALUES(7,'tulppaani','puolivarjo',3,30);
SELECT * FROM kukka;



SELECT
Laji, KukanTunniste, Lukumaara
FROM kukka;


SELECT * FROM kukka
WHERE Lukumaara = 13;

SELECT * FROM kukka
WHERE Kappalehinta = 6;

SELECT * FROM kukka
WHERE Laji = 'jalkasieni';



UPDATE kukka
SET Laji = 'kehäkukka',
    Kappalehinta = 7
WHERE KukanTunniste = 4;

UPDATE kukka
SET Laji = 'herkkusieni',
    Kappalehinta = 4
WHERE KukanTunniste = 6;

UPDATE kukka
SET kasvupaikka = 'puolivarjo',
    Kappalehinta = 8,
    Lukumaara = 13
WHERE KukanTunniste = 2;


UPDATE kukka
SET kasvupaikka = 'kivikko',
    Kappalehinta = 4,
    Laji = 'kielo'
WHERE KukanTunniste = 5;


SELECT * FROM kukka;


DELETE FROM kukka
WHERE kukanTunniste = 2;

DELETE FROM kukka
WHERE kukanTunniste = 5;

DELETE FROM kukka
WHERE kasvupaikka = "autotalli";

DELETE FROM kukka
WHERE Lukumaara = 13 OR Laji = 'kielo';

DELETE FROM kukka
WHERE Lukumaara = 15 AND
    Kappalehinta = 3 AND
    Laji = 'jalkasieni';


    SELECT * FROM kukka;
