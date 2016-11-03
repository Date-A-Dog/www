CREATE TABLE Shelters (
  shelter_id VARCHAR(20) PRIMARY KEY NOT NULL,
  email VARCHAR(254) NOT NULL,
  shelter_name VARCHAR(100) NOT NULL,
  address1 VARCHAR(50), --petfinder has two address fields
  address2 VARCHAR(50),
  city VARCHAR(60),
  state VARCHAR(2),
  zipcode VARCHAR(10),
  phone VARCHAR(15),
  fax VARCHAR(15),
  website VARCHAR(100) --this seems to be hidden in the fax or phone field, I can do a check
  --to attempt to retrieve invalid phone numbers with syntax like an http request, then
  --and input them into this. Maybe a stretch goal, and I could just strip out the non-valid
  -- phone numbers.
);

CREATE TABLE Users (
  user_id SERIAL PRIMARY KEY,
  email VARCHAR(254) NOT NULL,
  full_name VARCHAR(100),
  street VARCHAR(100),
  city VARCHAR(60),
  state VARCHAR(2),
  zipcode VARCHAR(10),
  phone VARCHAR(15)
);

CREATE TABLE Dogs (
  dog_id INT PRIMARY KEY NOT NULL,
  shelter_id VARCHAR(20) NOT NULL REFERENCES Shelters(shelter_id),
  dog_name VARCHAR(50),
  breeds text[],
  sex VARCHAR(1),
  age VARCHAR(10),
  size VARCHAR(1),
  description TEXT,
  last_updated TIMESTAMP,
  status VARCHAR(1)
);

--CREATE TABLE DogBreeds (
--  dog_id INT NOT NULL REFERENCES Dogs(dog_id),
--  breed VARCHAR(50)
--);

CREATE TABLE DogImages (
  dog_id INT NOT NULL REFERENCES Dogs(dog_id),
  image_id INT NOT NULL,
  image_size VARCHAR(5),
  image_url VARCHAR(150)
);

CREATE TABLE Request(
  req_id SERIAL PRIMARY KEY,
  dog_id INT NOT NULL REFERENCES Dogs(dog_id),
  shelter_id VARCHAR(20) NOT NULL REFERENCES Shelters(shelter_id),
  user_id INT NOT NULL REFERENCES Users(user_id),
  requested_date DATE,
  request_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(1)
);

CREATE TABLE ViewedDogs(
  user_id INT NOT NULL REFERENCES Users(user_id),
  dog_id INT NOT NULL REFERENCES Dogs(dog_id),
  liked BOOLEAN NOT NULL,
  liked_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);