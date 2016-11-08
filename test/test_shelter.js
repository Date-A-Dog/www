var assert = require("assert");
var Shelter = require("../www/js/shelter");


describe("Shelter", function() {
  var SHELTER_ID = "WA142";


  describe("Shelter Constructor", function() {
  	it("builds a Shelter Object", function() {
  		/** do testign here**/
      //var shelter = new Shelter(SHELTER_ID);
      var shelter;
      assert.equal(1, 1);
  	});
  });

  /** Tests for getPendingRequests() method **/
  describe("Shelter getPendingRequests()", function() {
    var shelter = Shelter(SHELTER_ID);
    shelter.testingMockData = true;

    shelter.updateDateRequests(); // no call back, this is sync
    var results = shelter.getPendingRequests(); 

    it("1. Correct number of elemnents", function() {
      // ensure data is loaded before asserting
      assert.equal(1, results.length);
      
    }); // end of 1.
    it("2. Correct status for each element", function() {
      for (var i = 0; i < results.length; i++) {
        assert.equal("P", results[i].status);
      }      
    }); // endo of 2     
  }); // end of getPendingRequest() test

  /** Tests for getHistoryRequests() method **/
  describe("Shelter getHistoryRequests()", function() {
    var shelter = Shelter(SHELTER_ID);
    shelter.testingMockData = true;

    shelter.updateDateRequests(); // no call back, this is sync
    var results = shelter.getHistoryRequests(); 

    it("1. Correct number of elemnents", function() {
      // ensure data is loaded before asserting    
      assert.equal(2, results.length);
      
    }); // end of 1.

    it("2. Correct status for each element", function() {
      var allValidHistoryStatus = true;
      for (var i = 0; i < results.length; i++) {
        var status = results[i].status;
        if (status != "A" && status != "D") {
          // contains other status then history
          allValidHistoryStatus = false;
        }
        assert.notEqual("P", status);
        assert.equal(true, allValidHistoryStatus);
      }      
    }); // endo of 2
      
  }); // end of getHistoryRequest() test


  /** Tests for getDateRequest() method **/
  describe("Shelter getDateRequests()", function() {
    var shelter = Shelter(SHELTER_ID);
    shelter.testingMockData = true;
    shelter.updateDateRequests();
    var results = shelter.getDateRequests();

    it("1. Correct number of elements", function() {
      
    });
  });

}); // end of shlelter test