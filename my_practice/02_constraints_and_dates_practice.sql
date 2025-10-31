SELECT * FROM person LIMIT 10;

ALTER TABLE person
    ADD CONSTRAINT dob_check
CHECK (date_of_birth <= CURRENT_DATE);

--INSERT INTO person (first_name, last_name, gender, date_of_birth)
--VALUES ('Future', 'Person', 'Male', CURRENT_DATE + INTERVAL '1 day');

SELECT
    person.first_name,
    person.date_of_birth,
    EXTRACT (YEAR FROM person.date_of_birth) AS birth_year,
    AGE(NOW(), person.date_of_birth) AS age
FROM person;

