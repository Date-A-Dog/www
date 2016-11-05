/**
 * shelter object represents a shelter session for the front
 * end webapp. This object is composed of a set of date requests
 * and methods to query and update server data.
 *
 */
var Shelter = function(_id) { 
  var fetchComplete; // avoid calling methods
  
  var shelter = {
    id: _id,
    dateRequests: null
  };

  // Updates this shelter's set of date requests
  // by calling database with most up-to-date data.
  // This function is asynchronous and supports a  call back
  // funtion as parameter.
  //
  // params: 
  // callback - Is a callback function to be invoked upon
  //            completion of async task.
  //                            
  shelter.refreshRequests = function(callback) {
    // do business logic to fetch new requests and
    // update this.daterequests

    // call async method to load dateRequext data
    fetchRequests('../js/js/mockData/dateRequestData.json', function(data) {
        //return data here
        shelter.dateRequests = data;
        callback();
    });
  };

  // Update table with date requests with status = 'P'
  // for this shelter
  shelter.getPendingRequests = function(tableId) {
    if (!shelter.dateRequests){ 
      console.log("Error: calling getPendingRequests() before fetching shelter data.");
      return null;
    }
    updateTable(tableId, shelter.requests, 'pending');
  };

  // Update table with date requests of status = 'A' or 'D'
  shelter.getHistoryRequests = function(tableId) {
    if (!shelter.dateRequests){ 
      console.log("Error: calling getHistoryRequests() before fetching shelter data.");
      return null;
    }
    updateTable(tableId, shelter.requests, 'history');
  };
 
  // Makes appropiate call to database/API to update
  // status for the specified requestId - careful to update
  // the current screen to reflect changes 
  shelter.updateRequestStatus = function(requestId, newStatus) {

  };


  // Gets the request object identified by 'requestId'
  // given as parameter. In the event that this method is
  // called before this shelter has been loaded with data,
  // this method will call this.refreshRequest before attempting
  // search.
  // 
  // params:
  // requestId - an integer value which identifies the
  //             dateRequest object to return.
  // returns:
  // A dateRequest object corresponding to 'requestId'
  // if found, otherwise returns null.       
  //
  shelter.getDateRequestById = function(requestId) {
    // check param is provided
    if (arguments.length != 1) {
      console.log("Error: this.getRequestById requires parameter.")
      return null;
    }

    if (!shelter.dateRequests){ 
      console.log("Error: calling getDateRequestsById() before fetching shelter data.");
      return null;
    }

    // check if dateRequests has been initiated
    if (!shelter.dateRequests || !hasDateRequests()) {
      // refresh requests - pas this function as callback
      console.log("No dateRequests available for this shelter.");

      return null;
    }

    // iterate through available requests until we find reqId
    // and return it if found
    for (var i = 0; i < shelter.dateRequests.length; i++) {
      if (shelter.dateRequests[i].id === requestId) {
        // we have a match, return it
        console.log("found match");
        return shelter.dateRequests[i];
      }
    }
    
    return null;
  };

  // Gets all date requests available for this shelter
  //
  // return: 
  //   An array containing dateRequestObjects. Returns null if this
  //   shelter's dateRequest array has has not yet been initialized 
  //
  shelter.getDateRequests = function() {
    if (!shelter.dateRequests){ 
      console.log("Error: calling getDateRequests() before fetching shelter data.");
      return null;
    }

    if(!hasDateRequests()) {
      console.log("No dateRequests available for this shelter.");
      return [];
    }
    return shelter.dateRequests;
  };

  // private helper function checks is shelter.dateRequests is
  // empty.
  // returns:
  //   false if there are no date requests for this shelter
  //   true otherwise.
  //
  var hasDateRequests = function() {
    return (shelter.dateRequests.length > 0);
  };

  return shelter;
};

module.exports = Shelter;
