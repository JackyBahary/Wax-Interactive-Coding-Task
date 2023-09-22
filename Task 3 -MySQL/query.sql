-- create
CREATE TABLE ANIMALS (
  id int,
  name varchar(255)
);

CREATE TABLE ATTRIBUTES (
  animal_id int,
  attribute varchar(255),
  value varchar(255)
);

-- insert
INSERT INTO ANIMALS VALUES (1, 'Lion');
INSERT INTO ANIMALS VALUES (2, 'Kangaroo');
INSERT INTO ANIMALS VALUES (3, 'Shark');
INSERT INTO ANIMALS VALUES (4, 'Octopus');
INSERT INTO ANIMALS VALUES (5, 'Spider');

INSERT INTO ATTRIBUTES VALUE (1, 'Legs', 4);
INSERT INTO ATTRIBUTES VALUE (1, 'Class', 'Mammalia');
INSERT INTO ATTRIBUTES VALUE (2, 'Legs', 2);
INSERT INTO ATTRIBUTES VALUE (2, 'Class', 'Mammalia');
INSERT INTO ATTRIBUTES VALUE (3, 'Legs', 0);
INSERT INTO ATTRIBUTES VALUE (3, 'Class', 'Chondrichthyes');
INSERT INTO ATTRIBUTES VALUE (4, 'Legs', 8);
INSERT INTO ATTRIBUTES VALUE (4, 'Class', 'Cephalopoda');
INSERT INTO ATTRIBUTES VALUE (5, 'Legs', 8);
INSERT INTO ATTRIBUTES VALUE (5, 'Class', 'Arachnida');

-- fetch (Jacky's solutions start here)
-- solution-1
SELECT
  name,
  MAX(CASE 
    WHEN attribute = 'Legs' THEN value 
    END) AS legs,
  MAX(CASE 
    WHEN attribute = 'Class' THEN value 
    END) AS class
FROM
  ANIMALS 
LEFT JOIN
  ATTRIBUTES 
  ON ANIMALS.id = ATTRIBUTES.animal_id
GROUP BY
  name;

--solution-2
SELECT 
  ANIMALS.name,
  legs.value as legs,
  class.value as class
FROM 
  ANIMALS
LEFT JOIN ATTRIBUTES legs
  ON ANIMALS.id = legs.animal_id
  AND legs.attribute = 'Legs'
LEFT JOIN ATTRIBUTES class
  ON ANIMALS.id = class.animal_id
  AND class.attribute = 'Class'