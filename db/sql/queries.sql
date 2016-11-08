---- USER ----


-- Get Next (Unjudged) Dog Summary

SELECT d.dog_id, d.dog_name, d.age, d.sex, d.size, di.image_url, s.shelter_name
FROM Dogs d
  JOIN DogImages di ON d.dog_id = di.dog_id
  JOIN Shelters s ON d.shelter_id = s.shelter_id
WHERE NOT EXISTS (SELECT vd.dog_id
                  FROM ViewedDogs vd
                  WHERE vd.user_id = 1 --VAR
                        AND d.dog_id = vd.dog_id)
      AND di.image_id = 1
      AND di.image_size = 'pn' --VAR
ORDER BY d.dog_id ASC
LIMIT 1;


-- Get Dog's Summary

SELECT d.dog_id, d.dog_name, d.age, d.sex, d.size, di.image_url, s.shelter_name
FROM Dogs d
  JOIN DogImages di ON d.dog_id = di.dog_id
  JOIN Shelters s ON d.shelter_id = s.shelter_id
WHERE d.dog_id = '29132479' --VAR
    AND di.image_id = 1     --Could be VAR, probably could just stick with 1
    AND di.image_size = 'pn' --VAR
LIMIT 1;


-- Get Dog Detail for profile

SELECT d.dog_id, d.dog_name, d.age, d.sex, d.size, d.breeds, d.description,
  di.image_url, s.shelter_name, s.shelter_id
FROM Dogs d
  JOIN DogImages di ON d.dog_id = di.dog_id
  JOIN Shelters s ON d.shelter_id = s.shelter_id
WHERE d.dog_id = '29132479' --VAR
      AND di.image_id = 1
      AND di.image_size = 'pn'
LIMIT 1;


-- Judge Dog

INSERT INTO ViewedDogs (user_id, dog_id, liked)
    VALUES ('', '', '');


-- Get Liked Dog List

SELECT d.dog_id, d.dog_name, di.image_url
FROM ViewedDogs vd
  JOIN Dogs d ON vd.dog_id = d.dog_id
  JOIN DogImages di ON vd.dog_id = di.dog_id
WHERE vd.user_id = 1 --VAR
      AND vd.liked = TRUE
      AND di.image_id = 1 --VAR
      AND di.image_size = 'fpm' --VAR
ORDER BY vd.liked_time DESC;


-- Add Date Request

INSERT INTO Request (dog_id, shelter_id, user_id, status, requested_date)
    VALUES ('', '', '', '', '');


-- Create User Account
-- ###### CHANGES to INSERT - first and last name, no longer autoinc user_id
INSERT INTO Users (user_id, first_name, last_name, email)
    VALUES ($1, $2, $3, $4);


-- Update User Account with Application Data

UPDATE Users
SET full_name = '',
  street = '',
  city = '',
  state = '',
  zipcode = '',
  phone = ''
WHERE user_id = 1; --VAR


---- [SHELTER] ----


-- Get Date Request Detail
-- ###### CHANGES to SELECT - first and last name
SELECT r.dog_id, r.user_id, r.requested_date, r.status, d.dog_name,
  u.email, u.first_name, u.last_name, u.street, u.city, u.state, u.zipcode, u.phone
FROM Request r
  JOIN Users u ON r.user_id = u.user_id
  JOIN Dogs d ON r.dog_id = d.dog_id
WHERE r.req_id = 1; --VAR


-- Get Unreviewed Date Requests List

SELECT r.req_id, r.dog_id, r.user_id, r.requested_date,
  u.full_name, d.dog_name
FROM Request r
  JOIN Users u ON r.user_id = u.user_id
  JOIN Dogs d ON r.dog_id = d.dog_id
WHERE r.shelter_id = 'WA27' --VAR
      AND r.status = ''
ORDER BY r.requested_date ASC;


-- Get Date History
-- ###### CHANGES to SELECT - first and last name

SELECT r.req_id, r.dog_id, r.user_id, r.requested_date, r.status,
  u.first_name, u.last_name, d.dog_name
FROM Request r
  JOIN Users u ON r.user_id = u.user_id
  JOIN Dogs d ON r.dog_id = d.dog_id
WHERE r.shelter_id = 'WA27' --VAR
  AND r.status != ''
ORDER BY r.updated_time ASC;


-- Update Request Status

UPDATE Request
SET status = 'A', --VAR
  updated_time = CURRENT_TIMESTAMP
WHERE req_id = 1; --VAR

