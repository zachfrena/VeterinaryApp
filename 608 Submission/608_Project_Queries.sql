# QUERIES FOR 608 FINAL PROJECT
# TEAM MEMBERS:
#     - Zachary Frena, Marko Mijovic, Meet Pandya

USE VETAPPLICATION;

select * from animal; -- Basic Retrieval Query

select * from users;

select * from animal_health -- Retrieval Query with ordered results
Order by animalID;

select DISTINCT * from animal -- retrieval with joined tables
JOIN animal_health ON animal.animalID = animal_health.animalID WHERE continuousMedication is not null;

select A.aName, H.healthID, H.animalId, H.healthStatus, H.specialDiet, H.continuousMedication -- nested retrieval query
from animal_health as H, animal as A 
where H.continuousMedication is not null 
AND H.animalID = (select animalID from animal where weight > 45 and weight < 65) 
AND A.animalId = H.animalID;


DROP TRIGGER IF EXISTS ANIMAL_WEIGHT_VIOLATION; -- update operation with trigger
DELIMITER $$
CREATE TRIGGER ANIMAL_WEIGHT_VIOLATION
BEFORE UPDATE
ON animal FOR EACH ROW
BEGIN
	DECLARE MESSAGE_TEXT VARCHAR(255);
    IF new.weight < 0 THEN
        SET new.weight = 0;
		SET MESSAGE_TEXT = 'Cannot set weight less than 0, so weight is set to 0';
    END IF; 
END $$
DELIMITER ;

DROP TRIGGER IF EXISTS DELETE_ANIMAL; -- delete operation with trigger
DELIMITER $$
CREATE TRIGGER DELETE_ANIMAL
BEFORE DELETE
ON animal FOR EACH ROW
BEGIN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot Delete Animal';
END $$
DELIMITER ;

show triggers; -- shows our triggers

DELETE FROM animal WHERE animalID = 105; -- actual delete operation


UPDATE ANIMAL -- update animal operation
SET weight = -1
WHERE animalID = 100;