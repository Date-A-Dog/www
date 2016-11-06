/**
 * DateRequest is a module which represents a request
 * from a user to date a dog from a shelter.
 *
 */
DateRequest = function(requestId, dogProfile, daterProfile, dateTime, status) {
  var request = {};
  
  //TODO: verify argument types {DogProfile, DaterProfile} before constructing
  request.id = requestId;
  request.dogProfile   = dogProfile;
  request.daterProfile = daterProfile;
  request.dateTime     = dateTime;
  request.status       = status;
  //Date
  
  return request;
};
module.exports = DateRequest;
