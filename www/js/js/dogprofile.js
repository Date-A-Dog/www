/*
 * Dog profile is a module which contains shelter dog properties.
 * This module is immutable, and can only be accessed
 * by using its accessor methods.
 *
 */

var DogProfile = function(dogId, name, sex, photoURL) {
  // object profile properties
  var profile = {};

  // declare/init dog properties 
  profile._id       = dogId;
  profile._name     = name;
  profile._sex      = sex;
  profile._photoURL = photoURL;

  // log entry
  console.log("DogProfile created: " + profile);
  console.log(profile._id + ", " + profile._name + ", " + profile._sex + ", " + profile._photoURL);


  
  /**
   * Getter method
   * returns dogId
   **/
  profile.id = function() {
    return this._id;
  };
  
  /**
   * Getter method
   * returns dogName
   **/
  profile.name = function() {
    return this._name;
  };
  
  /**
   * Getter method
   * returns dogSex
   **/
  profile.sex = function() {
    return this._sex;
  };

  /*
   * Getter method
   * returns photoURL
   */
  profile.photoURL = function() {
    return this._photoURL;
  };
  
  return profile;
};

module.exports = DogProfile;
