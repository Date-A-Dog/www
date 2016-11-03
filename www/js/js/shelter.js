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

  // function which will reset list of requests for this
  // shelter
  shelter.refreshRequests = function() {
    // do business logic to fetch new requests and
    // update this.daterequests

    fetchComplete = false;
    // call async method to load dateRequext data
    fetchRequests('js/js/mockData/dateRequestData.json', function(data){
        //return data here
        shelter.dateRequests = data;
        fetchComplete = true;
    });  
  };

  // Update table with date requests with status = 'P'
  // for this shelter
  shelter.getPendingRequests = function(tableId) {
    updateTable(tableId, shelter.requests, 'pending'); // only put "pending"
  };

  // Update table with date requests of status = 'A' or 'D'
  shelter.getHistoryRequests = function(tableId) {
    updateTable(tableId, shelter.requests, 'history'); // only historic 
  };
 
  // Makes appropiate call to database/API to update
  // status for the specified requestId - careful to update
  // the current screen to reflect changes 
  shelter.updateRequestStatus = function(requestId, newStatus) {

  };

  // Returns array of all dateRequests for this shelter
  shelter.getDateRequests = function () {
    return shelter.dateRequests;
  };




  return shelter;
};

module.exports = Shelter;
