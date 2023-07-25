/* Populate database with sample data. */
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Agumon', '2020-02-03', 10.23, true, 0); 
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES('Gabumon', '2018-11-15', 8, true, 2);
INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES('Pikachu', '2021-01-07', 15.04, 'false', 1);
INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Devimon', '2017-05-12', 11, 'true', 5);


INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Charmander', '2020-02-08', -11, false, 0);
INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Plantmon', '2021-11-15', -5.7, true, 2);
INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Squirtle', '1993-11-04', -12.13, false, 3);
INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Angemon', '2005-06-12', -45, true, 1);
INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Boarmon', '2005-06-07', 20.4, true, 7);
INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Blossom', '1998-10-13', 17.0, true, 3);
INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Ditto', '2022-05-14', 22, true, 4);


INSERT INTO owners (full_name, age) VALUES 
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);


INSERT INTO species (name) VALUES 
('Pokemon'),
('Digimon');

UPDATE animals SET species_id = CASE
WHEN name LIKE '%mon' THEN 2
ELSE 1
END;


UPDATE animals
SET owner_id = CASE
                WHEN name = 'Agumon' THEN 1
                WHEN name IN ('Gabumon', 'Pikachu') THEN 2
                WHEN name IN ('Devimon', 'Plantmon') THEN 3
                WHEN name IN ('Charmander', 'Squirtle', 'Blossom') THEN 4
                WHEN name IN ('Angemon', 'Boarmon') THEN 5
                ELSE NULL
              END;


-- JOIN TABLES

INSERT INTO vets (name, age, date_of_graduation)
VALUES 
  ('William Tatcher', 45, '2000-04-23'),
  ('Maisy Smith', 26, '2019-01-17'),
  ('Stephanie Mendez', 64, '1981-05-04'),
  ('Jack Harkness', 38, '2008-06-08');



INSERT INTO specializations (vets_id, species_id)VALUES (4, 1);

INSERT INTO specializations (vets_id, species_id)VALUES (2, 1);

INSERT INTO specializations (vets_id, species_id)VALUES (2, 2);

INSERT INTO specializations (vets_id, species_id)VALUES (3, 2);



INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (4, 1, '2020-05-24');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (4, 2, '2020-07-22');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (3, 2, '2021-02-02');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (1, 4, '2020-01-05');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (4, 1, '2020-03-08');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (4, 1, '2020-05-14');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (2, 3, '2021-05-04');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (3, 5, '2021-02-24');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (1, 6, '2019-12-21');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (4, 6, '2020-08-10');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (1, 6, '2021-04-07');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (2, 7, '2019-09-29');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (3, 8, '2020-10-03');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (3, 8, '2020-11-04');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (1, 9, '2019-01-24');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (1, 9, '2019-05-15');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (1, 9, '2020-02-27');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (1, 9, '2020-08-03');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (2, 10, '2020-05-24');

INSERT INTO visits (vets_id, animals_id, date_of_visit)VALUES (4, 10, '2021-01-11');