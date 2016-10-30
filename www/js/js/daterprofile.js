/*
 * daterprofile.js is a module encapsulating a user profile.
 *
 */
function DaterProfile(email, fName, lName, phone) {
  // dater properties
  var _email  = email; // userId is the user's email
  var _fName  = fName;
  var _lName  = lName;
  var _phone  = phone; 

  var _street;
  var _city;
  var _state;
  var _zipCode;
 
  // log entry
  console.log("Dater profile created");

  // address
  var _address = {
    street:  _street,
    city:    _city,
    state:   _state,
    zipCode: _zipCode
  } 

  // dater properties
  var profile = {
    fName: _fName,
    lName: _lName,
    email: _email,
    phone: _phone,
    address: _address
  }
  /*
   * Getter method, returns user's email
   */
  profile.email = function() {
    return _email;
  };

  /**
   * Getter method, returns dater's first name
   */
  profile.fName = function() {
    return _fName;
  };

  /**
   * Getter method, returns dater's last name
   */
  profile.lName = function() {
    return _lName;
  };

  /**
   * Getter method, returns dater's phone number
   */
  profile.phone = function() {
    return _phone;
  };

  /**
   * Getter method, returns dater's email
   */
  profile.email = function() {
    return _email;
  };

  /**
   * Getter method, return dater's street
   */
  profile.address.street = function() {
    return _street;
  };
  
  /**
   * Getter method, returns dater's city
   */
  profile.address.city = function() {
    return _city;
  };

  /**
   * Getter method, returns dater's state
   */
  profile.address.state = function() {
    return _state;
  };
  
  /**
   * Getter method, returns dater's zipcode
   */
  profile.address.zipCode = function() {
    return _zipCode;
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
      return _address;
    }
    // TODO: input validation here
    _street = street;
    _city = city;
    _state = state;
    _zipCode = zipCode;

    return profile;
  };

  return profile;
}

module.exports = DaterProfile;
