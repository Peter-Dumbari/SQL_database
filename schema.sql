/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id INTEGER,
  name VARCHAR(255),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL,
);



ALTER TABLE animals
ADD COLUMN species VARCHAR(255);


CREATE TABLE owners (
    id serial not null primary key,
    full_name VARCHAR(255),
    age INT
);

CREATE TABLE species (
    id serial not null primary key,
    name VARCHAR(255)
);


-- Make sure that id is set as autoincremented PRIMARY KEY
ALTER TABLE animals
MODIFY id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

-- Remove column species
ALTER TABLE animals DROP COLUMN species;

-- Add column species_id which is a foreign key referencing species table
ALTER TABLE animals ADD species_id int REFERENCES species(id);

-- Add column owner_id which is a foreign key referencing the owners table
ALTER TABLE animals ADD owner_id int REFERENCES owners(id);