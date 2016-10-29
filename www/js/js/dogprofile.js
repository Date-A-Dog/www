/*
 * Dog profile is a module which contains shelter dog properties.
 * This module is immutable, and can only be accessed
 * by using its accessor methods.
 *
 */

function DogProfile(dogId, name, sex, photoURL) {
  // dog properties 
  var _id       = dogId;
  var _name     = name;
  var _sex      = sex;
  var _photoURL = photoURL;
  console.log("new DogProfile created");
  var profile = {
    id:       _id,
    name:     _name,
    sex:      _sex,
    photoURL: _photoURL
  }
  
  /**
   * Getter method
   * returns dogId
   **/
  profile.id = function() {
    return _id;
  };
  
  /**
   * Getter method
   * returns dogName
   **/
  profile.name = function() {
    return _name;
  };
  
  /**
   * Getter method
   * returns dogSex
   **/
  profile.sex = function() {
    return _sex;
  };

  /*
   * Getter method
   * returns photoURL
   */
  profile.photoURL = function() {
    return _photoURL;
  };
  
  return profile;
}

module.exports = DogProfile;
