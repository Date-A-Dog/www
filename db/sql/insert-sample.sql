-- Create User Account
INSERT INTO Users (email, full_name)
    VALUES
      ('amarpal@cs.washington.edu', 'Amarpal Singh'),
      ('cosy16@cs.uw.edu', 'Amanda Loh'),
      ('habdi@cs.washington.edu', 'Hassan Abdi'),
      ('hsalazar@cs.washington.edu', 'Hugo Salazar-Soto'),
      ('jammua@cs.washington.edu', 'Anmol Jammu'),
      ('laetaku@cs.uw.edu', 'Alexis Allen'),
      ('raagp@cs.washington.edu', 'Anuraag Pokhrel'),
      ('wolfela@uw.edu', 'Lauren Wolfe');

INSERT INTO Shelters (shelter_id, shelter_name, address1, address2, city, state, zipcode, phone, fax, email)
    VALUES
      ('WA214', 'Washington German Shepherd Rescue', '', '', 'Seattle', 'WA', '98104', '(206) 445-5151', 'www.washingtongsd.org', 'washingtonshepherds@yahoo.com'),
      ('WA575', 'Royal Hounds Greyhound Adoption', '', '', 'Seattle', 'WA', '98104', 'http://royalhounds.org/', '', 'info@royalhounds.org'),
      ('WA27', 'Seattle Animal Shelter', '2061 15th Avenue West', '', 'Seattle', 'WA', '98119', '206-386-7387', '206-386-4285', '');

INSERT INTO Dogs (dog_id, shelter_id, dog_name, breeds, sex, age, size, description, last_updated, status)
    VALUES
      ('30329094', 'WA214', 'Spencer', '{Poodle}', 'M', 'Adult', 'S', 'Spencer is the most devoted and happy poodle mix ' ||
              'you will ever meet. He has not a care in the world. Spencer is living with other dogs and cats and gets along ' ||
              'great with all of them. The ideal home for Spencer would be someone who works from home or is retired. Although ' ||
              'Spencer is 8 years of age, you would never know it. He is always ready for a walk or to play with his toys. He ' ||
              'will also run around in the yard with the other dogs. He is extremely agile and will jump on the sofa or bed in ' ||
              'two seconds flat before you even turn your head. Spencer is house broken and he is crate trained. However, he ' ||
              'prefers not being crated and really wants to hang out with his person as much as possible. He loves to lounge around ' ||
              'the TV room and just hang out when you watch TV. He thinks he is a neck warmer. He is the perfect neck warmer. But he ' ||
              'also enjoys bones and loves to sit quietly and chew on his smoked bone. His ideal home would be someone in a house with ' ||
              'a fenced yard. He has been neutered, fully vaccinated, microchipped and just groomed! He weighs 13.6 lbs which a perfect ' ||
              'weight. His adoption fee is $180 Spencer would love a home where he can sit with his person all day long and go for walks. ' ||
              'He loves to go for walks. He would also love someone who will sit with him and cuddle all day long as well. FENCED YARD ' ||
              'REQUIRED FOR ANY OF OUR DOGS!! Please fill out an application to meet me at http://www.washingtongsd.org/application.html ' ||
              'The adoption process includes completion of an adoption application, a vet check, a home visit and a lifetime adoption ' ||
              'contract.PLEASE NOTE:The information contained within this biography is based on observations from the current foster home. ' ||
              'In no way can we predict future behavior and or temperament as individual household dynamics vary greatly, and are impacted ' ||
              'by the experience and leadership of those within the home.Adoptions are not done on a first come first serve basis. WA German ' ||
              'Shepherd Rescue is the companion animal''s advocate and will select the most suitably matched home for the dog''s general needs ' ||
              'and the unique needs of each individual dog in our care. We reserve the right to refuse service and adoption without explanation. ' ||
              'PLEASE HELP STOP BREED SPECIFIC LEGISLATION', '2014-09-19T14:09:50Z','A'),
      ('32900518','WA214', 'Rommel', '{German Shepherd Dog}', 'M', 'Adult', 'L', 'Rommel has just arrived into rescue! Rommel lost his home after ' ||
              'the owner passed away. Rommel is a very sweet and handsome boy. He is 5 years old--the perfect age for a shepherd! Rommel lives with ' ||
              'other dogs and enjoys their company. He is crate-trained and rides perfectly in the car in the crate, too. Rommel absolutely adores ' ||
              'playing in the water. He was visiting a friend''s home and made a straight line to the pond! Rommel also loves going for walks. He ' ||
              'has wonderful energy for walks or hiking. Rommel is super sweet and very easy going. After his foster home picked him up from the ' ||
              'grooming place, he pranced right outside. Two groups of people in front of the business in Seattle came right up to pet him and say,' ||
              'Hello.You could not ask for a nicer dog! If you would like to adopt Rommel, please visit our website and apply today!',
              '2016-10-25T04:24:08Z', 'A');
      ('36150024', 'WA575', 'Dorsey', '{Greyhound}', 'M', 'Adult', 'L', 'Hey, Dorsey here! Yep, that''s me, can you tell already that I enjoy ' ||
              'being the center of attention?? Let me tell you about myself. I retired ' ||
              'as a professional athlete in July of 2016 and yes, I won some of my races. ' ||
              'I''m just a happy go lucky kinda friendly guy looking for my forever home now. ' ||
              'I''m ready for life as a professional pet and um...couch potato. As if that isn''t ' ||
              'enough already... I''m a beautiful sleek black with an athletic build. So, if you ' ||
              'like the tall,dark and handsome type I just might be your guy. Contact my friends at' ||
              ' Royal Hounds if you''d like to meet me by downloading an application at the bottom of ' ||
              'this web page and email it in http://www.royalhounds.org/adopt.html See you soon, Dorsey',
              '2016-09-29T05:51:24Z','A'),
      ('36150026', 'WA575', 'King', '{Greyhound}', 'M', 'Adult', 'L', 'Yo, I''m King. Yep, that''s me, can you tell already that I enjoy ' ||
              'being the center of attention?? Let me tell you about myself. I retired ' ||
              'as a professional athlete in July of 2016 and yes, I won some of my races. ' ||
              'I''m just a happy go lucky kinda friendly guy looking for my forever home now. ' ||
              'I''m ready for life as a professional pet and um...couch potato. As if that isn''t ' ||
              'enough already... I''m a beautiful sleek black with an athletic build. So, if you ' ||
              'like the tall,dark and handsome type I just might be your guy. Contact my friends at' ||
              ' Royal Hounds if you''d like to meet me by downloading an application at the bottom of ' ||
              'this web page and email it in http://www.royalhounds.org/adopt.html', '2016-09-24T14:22:16Z','A'),
      ('29132479', 'WA27', 'Finch', '{Staffordshire Bull Terrier, American Staffordshire Terrier}', 'F', 'Baby', 'M',
              'I''m kind of lazy and useless, but super cuddly!', '2016-11-03T04:10:14Z','A'),
      ('35282497', 'WA27', 'Blue', '{Pit Bull Terrier}', 'F', 'Senior', 'S',  'This is getting tiring, so now you get ' ||
               'shorter descriptions', '2016-11-01T04:10:14Z','A'),
      ('36259349', 'WA27', 'Spot', '{Blue Heeler, Husky}', 'F', 'Baby', 'M', 'Okay, last one of these. No more descriptions',
              '2016-11-02T04:10:14Z','A');

INSERT INTO DogImages (dog_id, image_id, image_size, image_url)
    VALUES
      ('30329094', '1', 'pnt', 'http://photos.petfinder.com/photos/pets/30329094/1/?bust=1411135788&width=60&-pnt.jpg'),
      ('30329094', '1', 'fpm', 'http://photos.petfinder.com/photos/pets/30329094/1/?bust=1411135788&width=95&-fpm.jpg'),
      ('30329094', '1', 'x', 'http://photos.petfinder.com/photos/pets/30329094/1/?bust=1411135788&width=500&-x.jpg'),
      ('30329094', '1', 'pn', 'http://photos.petfinder.com/photos/pets/30329094/1/?bust=1411135788&width=300&-pn.jpg'),
      ('30329094', '1', 't', 'http://photos.petfinder.com/photos/pets/30329094/1/?bust=1411135788&width=50&-t.jpg'),

      ('32900518', '1', 'pnt', 'http://photos.petfinder.com/photos/pets/32900518/1/?bust=1440643379&width=60&-pnt.jpg'),
      ('32900518', '1', 'fpm', 'http://photos.petfinder.com/photos/pets/32900518/1/?bust=1440643379&width=95&-fpm.jpg'),
      ('32900518', '1', 'x', 'http://photos.petfinder.com/photos/pets/32900518/1/?bust=1440643379&width=500&-x.jpg'),
      ('32900518', '1', 'pn', 'http://photos.petfinder.com/photos/pets/32900518/1/?bust=1440643379&width=300&-pn.jpg'),
      ('32900518', '1', 't', 'http://photos.petfinder.com/photos/pets/32900518/1/?bust=1440643379&width=50&-t.jpg'),

      ('36150024', '1', 'pnt', 'http://photos.petfinder.com/photos/pets/30329094/2/?bust=1411135789&width=60&-pnt.jpg'),
      ('36150024', '1', 'fpm', 'http://photos.petfinder.com/photos/pets/30329094/2/?bust=1411135789&width=95&-fpm.jpg'),
      ('36150024', '1', 'x', 'http://photos.petfinder.com/photos/pets/30329094/2/?bust=1411135789&width=500&-x.jpg'),
      ('36150024', '1', 'pn', 'http://photos.petfinder.com/photos/pets/30329094/2/?bust=1411135789&width=300&-pn.jpg'),
      ('36150024', '1', 't', 'http://photos.petfinder.com/photos/pets/30329094/2/?bust=1411135789&width=50&-t.jpg'),

      ('36150026', '1', 'pnt', 'http://photos.petfinder.com/photos/pets/30329094/3/?bust=1411135789&width=60&-pnt.jpg'),
      ('36150026', '1', 'fpm', 'http://photos.petfinder.com/photos/pets/30329094/3/?bust=1411135789&width=95&-fpm.jpg'),
      ('36150026', '1', 'x', 'http://photos.petfinder.com/photos/pets/30329094/3/?bust=1411135789&width=500&-x.jpg'),
      ('36150026', '1', 'pn', 'http://photos.petfinder.com/photos/pets/30329094/3/?bust=1411135789&width=300&-pn.jpg'),
      ('36150026', '1', 't', 'http://photos.petfinder.com/photos/pets/30329094/3/?bust=1411135789&width=50&-t.jpg'),

      ('29132479', '1', 'pnt', 'http://photos.petfinder.com/photos/pets/35282497/1/?bust=1472247226&width=60&-pnt.jpg'),
      ('29132479', '1', 'fpm', 'http://photos.petfinder.com/photos/pets/35282497/1/?bust=1472247226&width=95&-fpm.jpg'),
      ('29132479', '1', 'x', 'http://photos.petfinder.com/photos/pets/35282497/1/?bust=1472247226&width=500&-x.jpg'),
      ('29132479', '1', 'pn', 'http://photos.petfinder.com/photos/pets/35282497/1/?bust=1472247226&width=300&-pn.jpg'),
      ('29132479', '1', 't', 'http://photos.petfinder.com/photos/pets/35282497/1/?bust=1472247226&width=50&-t.jpg'),

      ('35282497', '1', 'pnt', 'http://photos.petfinder.com/photos/pets/36291232/1/?bust=1477319716&width=60&-pnt.jpg'),
      ('35282497', '1', 'fpm', 'http://photos.petfinder.com/photos/pets/36291232/1/?bust=1477319716&width=95&-fpm.jpg'),
      ('35282497', '1', 'x', 'http://photos.petfinder.com/photos/pets/36291232/1/?bust=1477319716&width=500&-x.jpg'),
      ('35282497', '1', 'pn', 'http://photos.petfinder.com/photos/pets/36291232/1/?bust=1477319716&width=300&-pn.jpg'),
      ('35282497', '1', 't', 'http://photos.petfinder.com/photos/pets/36291232/1/?bust=1477319716&width=50&-t.jpg'),

      ('36259349', '1', 'pnt', 'http://photos.petfinder.com/photos/pets/36259349/1/?bust=1474172748&width=60&-pnt.jpg'),
      ('36259349', '1', 'fpm', 'http://photos.petfinder.com/photos/pets/36259349/1/?bust=1474172748&width=95&-fpm.jpg'),
      ('36259349', '1', 'x', 'http://photos.petfinder.com/photos/pets/36259349/1/?bust=1474172748&width=500&-x.jpg'),
      ('36259349', '1', 'pn', 'http://photos.petfinder.com/photos/pets/36259349/1/?bust=1474172748&width=300&-pn.jpg'),
      ('36259349', '1', 't', 'http://photos.petfinder.com/photos/pets/36259349/1/?bust=1474172748&width=50&-t.jpg');


INSERT INTO ViewedDogs (user_id, dog_id, liked)
    VALUES
      (1, 29132479, TRUE),
      (1, 30329094, FALSE),
      (1, 32900518, TRUE),
      (1, 36150024, TRUE),
      (1, 35282497, FALSE),
      (2, 29132479, TRUE),
      (2, 30329094, FALSE),
      (2, 32900518, TRUE),
      (2, 36150024, FALSE),
      (3, 29132479, TRUE),
      (3, 30329094, FALSE),
      (3, 32900518, TRUE),
      (4, 29132479, FALSE),
      (4, 32900518, TRUE),
      (5, 32900518, FALSE),
      (5, 36150024, TRUE),
      (6, 36259349, TRUE);

-- Add Date Request
INSERT INTO Request (dog_id, shelter_id, user_id, status, requested_date)
VALUES
  (29132479, 'WA27', 1, '', '2016-11-15'),
  (32900518, 'WA214', 1, '', '2016-11-15'),
  (29132479, 'WA27', 2, '', '2016-11-15'),
  (36150024, 'WA575', 5, '', '2016-11-15'),
  (29132479, 'WA27', 3, '', '2016-11-15'),
  (32900518, 'WA214', 4, '', '2016-11-15'),
  (36259349, 'WA27', 6, '', '2016-11-15');