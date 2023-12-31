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