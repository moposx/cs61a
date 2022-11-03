.read data.sql


CREATE TABLE bluedog AS
  SELECT color AS color, pet AS pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color AS color, pet AS pet, song AS song FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE smallest_int AS
  SELECT time AS time, smallest AS smallest FROM students WHERE smallest > 2 ORDER BY smallest LIMIT 20;

CREATE TABLE matchmaker AS
  SELECT bob.pet AS pet, bob.song AS song, bob.color AS bob_color, alice.color AS alice_color
    FROM students AS bob, students AS alice
    WHERE bob.pet = alice.pet AND bob.song = alice.song AND bob.time < alice.time;

CREATE TABLE sevens AS
  SELECT s.seven AS seven FROM students AS s, numbers AS n
    WHERE s.number = 7 AND s.time = n.time AND numbers."7" = "True"
