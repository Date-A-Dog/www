/**
 * shelter object represents a shelter session for the front
 * end webapp. This object is composed of a set of date requests
 * and methods to query and update server data.
 *
 */
var Shelter = function(id, dateRequests) {
  var shelter = {};

  shelter.id = id;
  shelter.dateRequests = setOfDates;
  
  // function which will reset list of requests for this
  // shelter
  shelter.refreshRequests = function() {
    // do business logic to fetch new requests and
    // update this.daterequests
    return shelter;  
  };

  // scan through this.dateRequests and extract
  // dates with status = 'P' - pending 
  // returns and array of DateRequests sorted 
  // by date
  shelter.getPendingRequests = function() {
  };

  // Scan through this.dateRequests and extract 
  // dates with status != 'P' - approved, denied
  // returns an array of DateRequests sorted by date
  shelter.getHistoryRequests = function() {
  };
 
  // Makes appropiate call to database/API to update
  // status for the specified requestId - careful to update
  // the current screen to reflect changes 
  shelter.updateRequestStatus = function(requestId, newStatus) {

  };

  return shelter;
};

module.exports = Shelter;
