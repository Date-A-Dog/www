/**
 * shelter object represents a shelter session for the front
 * end webapp. This object is composed of a set of date requests
 * and methods to query and update server data.
 *
 */
var Shelter = function(id) {

  //var id = id;
  var dateRequests = null;
  var fetchComplete; // avoid calling methods
  
  var shelter = {
    _id: id,
    _dateRequests: dateRequests
  };

  // function which will reset list of requests for this
  // shelter
  shelter.refreshRequests = function() {
    // do business logic to fetch new requests and
    // update this.daterequests

    fetchComplete = false;
    // call async method to load dateRequext data
    fetchRequests('js/js/dateRequestData.json', function(data){
        //return data here
        shelter._dateRequests = data;
        fetchComplete = true;
    });  
  };

  // scan through this.dateRequests and extract
  // dates with status = 'P' - pending 
  // returns and array of DateRequests sorted 
  // by date
  shelter.getPendingRequests = function(tableId) {
    putRequestsOnTable(tableId, 'pending'); // only put "pending"
  };

  // Scan through this.dateRequests and extract 
  // dates with status != 'P' - approved, denied
  // returns an array of DateRequests sorted by date
  shelter.getHistoryRequests = function(tableId) {
    putRequestsOnTable(tableId, 'history'); // only historic 
  };
 
  // Makes appropiate call to database/API to update
  // status for the specified requestId - careful to update
  // the current screen to reflect changes 
  shelter.updateRequestStatus = function(requestId, newStatus) {

  };

  // Returns array of dateRequests
  shelter.getDateRequests = function () {
    return shelter._dateRequests;
  };


  function putRequestsOnTable(tableId, status) {

    var table = document.getElementById(tableId);

    while(table.rows.length > 1) {
      table.deleteRow(1);
    }

    // iterate through each request in array
    for (var i = 0; i < shelter._dateRequests.length; i++) {
      var request = shelter._dateRequests[i];

      if (status === 'pending') {
        // skip if request is not 'pending' status
        if (request['status'] != 'P') continue;
      } else if (status === 'history') {
        // otherwise only skip 'pending'
        if (request['status'] === 'P') continue;
      }
      // new row
      var row = document.createElement('tr');
      //  requests properties
      var properties = ['id', 'daterProfile', 'dogProfile', 'dateTime', 'status'];

      // append each prop to current row
      for (var j = 0; j < properties.length; j++) {
        
        var cell = document.createElement('td');
        // set properties
        if (j === 1) {  // extract user name
          cell.innerHTML = request[properties[j]].fName + " " + request[properties[j]].lName;
        } else if (j === 2) { //extract dog name
          cell.innerHTML = request[properties[j]].name;
        } else {
          cell.innerHTML = request[properties[j]];
        }
        // append new cell
        row.append(cell);
      }
      // append the new row
      table.append(row);
    }
  };

  return shelter;
};

module.exports = Shelter;
