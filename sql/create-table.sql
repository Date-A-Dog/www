CREATE TABLE Shelters (
  shelter_id VARCHAR(20) PRIMARY KEY NOT NULL,
  email VARCHAR(254) NOT NULL,
  shelter_name VARCHAR(100) NOT NULL,
  street VARCHAR(100),
  city VARCHAR(60),
  state VARCHAR(2),
  zipcode VARCHAR(10),
  phone VARCHAR(15)
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
  dog_name VARCHAR(50),
  picture_url VARCHAR(150),
  sex VARCHAR(1),
  age VARCHAR(10),
  shelter_id VARCHAR(20) NOT NULL REFERENCES Shelters(shelter_id),
  size VARCHAR(1),
  description TEXT,
  available BOOLEAN DEFAULT TRUE
);

CREATE TABLE Breeds (
  dog_id INT NOT NULL REFERENCES Dogs(dog_id),
  breed VARCHAR(50)
);

CREATE TABLE Request(
  req_id SERIAL PRIMARY KEY,
  dog_id INT NOT NULL REFERENCES Dogs(dog_id),
  shelter_id VARCHAR(20) NOT NULL REFERENCES Shelters(shelter_id),
  user_id INT NOT NULL REFERENCES Users(user_id),
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