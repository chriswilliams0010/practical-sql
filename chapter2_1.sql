-- Chapter 2.1
-- zoo database for all animals and their descriptors
-- animal: id | animal_eng | animal_genus | animal_species
-- animal_desc: id | animal_name | height | weight | dob | animal 
CREATE TABLE animal (
    animal_id serial PRIMARY KEY, 
    animal_eng varchar(50),
    animal_genus varchar (50),
    animal_species varchar (50)
);
INSERT INTO animal (animal_eng, animal_genus, animal_species)
VALUES ('Lion', 'Panthera', 'Leo'),
('Tiger', 'Panthera', 'Tigris'),
('Bear', 'Arctos', 'Horribilis'),
('Giraffe', 'Giraffa', 'Camelopardalis'),
('Elephant', 'Loxodonta', 'Cyclotis');
CREATE TABLE animal_desc (
    desc_id serial PRIMARY KEY,
    animal_name varchar (100),
    height_meters numeric,
    weight_kg numeric,
    dob date,
    animal integer REFERENCES animal(animal_id)
    ON DELETE SET NULL
            
);
INSERT INTO animal_desc (animal_name, height_meters, weight_kg, dob, animal)
VALUES ('Leo', 1.2, 190, '2016-01-25', 1),
('Lea', 1, 110, '2018-06-06', 1),
('Timmy', 1, 150, '2017-11-11', 2),
('Bubba', 1.1, 272, '2005-12-04', 3),
('Arnold', 5.7, 1100, '1999-03-18', 4),
('Gerald', 5.2, 1080, '2001-04-02', 4),
('Elly', 2.4, 2500, '1989-07-07', 5);
SELECT * FROM animal_desc;