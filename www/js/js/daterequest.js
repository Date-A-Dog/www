/**
 * DateRequest is a module which represents a request
 * from a user to date a dog from a shelter.
 *
 */
DateRequest = function(dogProfile, daterProfile, dateTime, status) {
  var request = {};
  
  //TODO: verify argument types {DogProfile, DaterProfile} before constructing
  request._dogProfile   = dogProfile;
  request._daterProfile = daterProfile;
  request._dateTime     = dateTime;
  request._status       = status;
  //Date
  
  request.daterProfile = function() {
  	return this._daterProfile;
  };

  request.dogProfile = function() {
  	return this._dogProfile;
  };

  request.status = function() {
    return this._status;
  };

  request.dateTime = function() {
  	return this._dateTime;
  };

  return request;
};

module.exports = DateRequest;
