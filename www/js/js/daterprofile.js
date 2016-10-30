/*
 * daterprofile.js is a module encapsulating a user profile.
 *
 */
var DaterProfile =function(email, fName, lName, phone) {
  

  // dater profile properties
  var profile = {};
    

  // declare/init dater properties
  profile._email  = email; // userId is the user's email
  profile._fName  = fName;
  profile._lName  = lName;
  profile._phone  = phone;
  
 
  // log entry
  console.log("Dater profile created");


  /*
   * Getter method, returns user's email
   */
  profile.email = function() {
    return this._email;
  };

  /**
   * Getter method, returns dater's first name
   */
  profile.fName = function() {
    return this._fName;
  };

  /**
   * Getter method, returns dater's last name
   */
  profile.lName = function() {
    return this._lName;
  };

  /**
   * Getter method, returns dater's phone number
   */
  profile.phone = function() {
    return this._phone;
  };


  /**
   * Getter method, return dater's street
   */
  profile.street = function() {
    verifyProperty(profile, '_address');
    return this._address._street;
  };
  /**
   * Getter method, returns dater's city
   */
  profile.city = function() {
    verifyProperty(profile, '_address');
    return this._address._city;
  };

  /**
   * Getter method, returns dater's state
   */
  profile.state = function() {
    verifyProperty(profile, '_address');
    return this._address._state;
  };
  
  /**
   * Getter method, returns dater's zipcode
   */
  profile.zipCode = function() {
    verifyProperty(profile, '_address');
    return this._address._zipCode;
  };

  /**
   * Getter/setter method, initializes || returns
   * an object of type address. 
   *
   * params: 
   *   street - string
   *   city   - string
   *   state  - string
   *   zipCode- string
   */
  profile.address = function(street, city, state, zipCode) {
    if (!arguments.length) {
      // interpret method as getter
      
      // check if address is initialized
      verifyProperty(profile, '_address');

      return this._address;
    }
    profile._address = {};
    // TODO: input validation here
    profile._address._street = street;
    profile._address._city = city;
    profile._address._state = state;
    profile._address._zipCode = zipCode;

    return profile;
  };

  /** 
  * verifies address property has been defined
  */
  var verifyProperty = function(obj, property) {

    try {

        if (!(property in obj)) {
          throw {
            error: "Trying to access an undefined property of DaterProfile",
            message: "\"" + property + "\" is not defined in DaterProfile object" 
          }
        }

    }
    catch (e) {
      console.log("Error = " + e.error);
      console.log("Message = " + e.message);          
    }
  };

  return profile;
}

module.exports = DaterProfile;
