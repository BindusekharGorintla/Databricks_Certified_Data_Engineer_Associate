CREATE DATABASE IF NOT EXISTS cdm.hr_db;

CREATE TABLE cdm.hr_db.employees (id INT, name STRING, salary DOUBLE, city STRING);

INSERT INTO cdm.hr_db.employees
VALUES (1, "Anna", 2500, "Paris"),
       (2, "Thomas", 3000, "London"),
       (3, "Bilal", 3500, "Paris"),
       (4, "Maya", 2000, "Paris"),
       (5, "Sophie", 2500, "London"),
       (6, "Adam", 3500, "London"),
       (7, "Ali", 3000, "Paris");

CREATE VIEW cdm.hr_db.paris_emplyees_vw
AS SELECT * FROM cdm.hr_db.employees WHERE city = 'Paris';

------------------------------------------------------

GRANT SELECT, MODIFY, READ_METADATA, CREATE ON SCHEMA cdm.hr_db TO hr_team;

GRANT USAGE ON SCHEMA cdm.hr_db TO hr_team;

GRANT SELECT ON VIEW cdm.hr_db.paris_emplyees_vw TO `gorintla.bindusekhar@gmail.com`;

SHOW GRANTS ON SCHEMA cdm.hr_db;

SHOW GRANTS ON VIEW cdm.hr_db.paris_emplyees_vw;
