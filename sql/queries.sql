---- USER ----

-- Get Dog Summary -- Tinder Cards
SELECT d.dog_id, d.dog_name, d.age, d.sex, d.size, di.image_url, s.shelter_name
FROM Dogs d
  JOIN DogImages di ON d.dog_id = di.dog_id
  JOIN Shelters s ON d.shelter_id = s.shelter_id
WHERE d.dog_id = ''
    AND di.inage_id = 1
    AND di.image_size = 'pn'
LIMIT 1;

-- Get Dog Detail
SELECT d.dog_id, d.dog_name, d.age, d.sex, d.size, d.breeds, d.description,
  di.image_url, s.shelter_name, s.shelter_id
FROM Dogs d
  JOIN DogImages di ON d.dog_id = di.dog_id
  JOIN Shelters s ON d.shelter_id = s.shelter_id
WHERE d.dog_id = ''
      AND di.inage_id = 1
      AND di.image_size = 'pn'
LIMIT 1;

-- Judge Dog
INSERT INTO ViewedDogs (user_id, dog_id, liked)
    VALUES ('', '', '');

-- Get Next (Unjudged) Dog Summary
SELECT d.dog_id, d.dog_name, d.age, d.sex, d.size, di.image_url, s.shelter_name
FROM Dogs d
  JOIN DogImages di ON d.dog_id = di.dog_id
  JOIN Shelters s ON d.shelter_id = s.shelter_id
WHERE NOT EXISTS (SELECT vd.dog_id
                  FROM ViewedDogs vd
                  WHERE vd.user_id = ''
                  AND d.dog_id = vd.dog_id)
      AND di.inage_id = 1
      AND di.image_size = 'pn'
ORDER BY d.dog_id ASC
LIMIT 1;

-- Get Liked Dog List
SELECT d.dog_id, d.dog_name, di.image_url
FROM ViewedDogs vd
  JOIN Dogs d ON vd.dog_id = d.dog_id
  JOIN DogImages di ON vd.dog_id = di.dog_id
WHERE vd.user_id = ''
      AND vd.liked = TRUE
      AND di.inage_id = 1
      AND di.image_size = 'fpm'
ORDER BY vd.liked_time DESC;

-- Add Date Request
INSERT INTO Request (dog_id, shelter_id, user_id, status, requested_date)
    VALUES ('', '', '', '', '');

-- Create User Account
INSERT INTO Users (email)
    VALUES ('');

-- Update User Account with Application Data
UPDATE Users
SET full_name = '',
  street = '',
  city = '',
  state = '',
  zipcode = '',
  phone = ''
WHERE user_id = '';

---- SHELTER ----

-- Get Unreviewed Date Requests List
SELECT r.req_id, r.dog_id, r.user_id, r.requested_date,
  u.real_name, d.dog_name
FROM Request r
  JOIN Users u ON r.user_id = u.user_id
  JOIN Dogs d ON r.dog_id = d.dog_id
WHERE r.shelter_id = ''
      AND r.status = ''
ORDER BY r.requested_date ASC;


-- Get Date History
SELECT r.req_id, r.dog_id, r.user_id, r.requested_date, r.status,
  u.real_name, d.dog_name
FROM Request r
  JOIN Users u ON r.user_id = u.user_id
  JOIN Dogs d ON r.dog_id = d.dog_id
WHERE r.shelter_id = ''
ORDER BY r.updated_time ASC;


-- Update Request Status
UPDATE Requests
SET status = '',
  update_time = CURRENT_TIMESTAMP
WHERE request_id = '';

-- Get Date Request Detail
SELECT r.dog_id, r.user_id, r.requested_date, r.status,
  d.dog_name,
  u.email, u.full_name, u.street, u.city, u.state, u.zipcode, u.phone
FROM Request r
  JOIN Users u ON r.user_id = u.user_id
  JOIN Dogs d ON r.dog_id = u.dog_id
WHERE r.req_id = '';