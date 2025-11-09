-- SECTION 1: INSERT Operations (

-- INSERT 1: Add a new region
INSERT INTO regions (region_id, region_name)
VALUES (51, 'Arctic Region');

-- INSERT 2: Add a new country
INSERT INTO countries (country_id, country_name, region_id)
VALUES ('NP', 'Nepal', 16);

COMMIT;





-- SECTION 2: UPDATE Operations 


-- UPDATE 1: Update the newly inserted region name
UPDATE regions
SET region_name = 'Arctic and Polar Region'
WHERE region_id = 51;

-- UPDATE 2: Update the country to add to a different region
UPDATE countries
SET region_id = 48
WHERE country_id = 'NP';

COMMIT;





-- SECTION 3: SELECT (READ) Operations (

select * from countries;



-- SECTION 4: DELETE Operations (

-- DELETE 1: Remove the newly inserted country
DELETE FROM countries
WHERE country_id = 'NP';

-- DELETE 2: Remove the newly inserted region
DELETE FROM regions
WHERE region_id = 51;

COMMIT;