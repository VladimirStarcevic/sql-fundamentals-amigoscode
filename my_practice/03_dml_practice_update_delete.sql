SELECT * FROM person LIMIT 5;

UPDATE person SET first_name = 'TEST', last_name = 'USER' WHERE country_of_birth = 'Bolivia';
DELETE FROM person WHERE email LIKE '%cisco.com';

SELECT
    person.first_name,
    person.last_name
FROM
    person
WHERE country_of_birth = 'Bolivia';

SELECT * FROM person WHERE email  LIKE '%cisco.com';

INSERT INTO person (first_name, last_name, email, gender, date_of_birth, country_of_birth)
VALUES ('Original', 'Name', 'test@example.com', 'Male', '2000-01-01', 'Serbia');

SELECT * FROM person WHERE country_of_birth = 'Serbia';

INSERT INTO person (first_name, last_name, email, gender, date_of_birth, country_of_birth)
VALUES ('Updated', 'Name', 'test@example.com', 'Male', '2000-01-01', 'Serbia') -- 1. ŠTA POKUŠAVAŠ DA UNESEŠ
ON CONFLICT (email) -- 2. AKO POSTOJI KONFLIKT NA OVOJ KOLONI...
    DO UPDATE SET
                  first_name = EXCLUDED.first_name, -- 3. ...URADI UPDATE I POSTAVI VREDNOSTI
                  last_name = EXCLUDED.last_name;

SELECT * FROM person WHERE country_of_birth = 'Serbia';