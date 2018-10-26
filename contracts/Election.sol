pragma solidity ^0.4.2; 

contract Election {

  //Model a Candidate 
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
  //Store candidates
  //Fetch candidates
    mapping(uint => Candidate) public candidates; 
  //Store Candidates Count 
    uint public candidatesCount; 
  //Read candidate
    // string public candidate;
  //Constructor
    function Election () public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate (string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}