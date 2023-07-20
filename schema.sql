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

-- Drop the existing animals table if it exists
DROP TABLE IF EXISTS animals;

-- Create the modified animals table
CREATE TABLE animals (
    id serial not null primary key,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL,
    species_id INTEGER,
    owner_id INTEGER,
    FOREIGN KEY (species_id) REFERENCES species (id),
    FOREIGN KEY (owner_id) REFERENCES owners (id)
);