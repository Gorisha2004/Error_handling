// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Eligible {
    uint public marks;
    address public owner;

    event MarksChanged(uint256 newMarks);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    //function to check eligibility for merit scolarship
    function checkMeritScholarship(uint256 currentMarks) external onlyOwner returns(string memory){
        require(currentMarks > 85, "Not eligible for merit-based scholarship.");
        marks = currentMarks;
        emit MarksChanged(currentMarks);
        return "ELIGIBLE";
    }

    //function to check eligibility for sports scolarship
    function checkSportsScholarship(uint256 currentMarks) external onlyOwner returns(string memory) {
        require(currentMarks > 75, "Not eligible for sports-based scholarship.");
        marks = currentMarks;
        emit MarksChanged(currentMarks);
        return "ELIGIBLE";
    }

    function checkScholarshipEligibility(uint256 currentMarks) external onlyOwner {
        assert(marks>=0);  //this condiion should be true
        if (currentMarks <= 60) {
            revert("Not eligible for any scholarships.");
        }
        marks = currentMarks;
        emit MarksChanged(currentMarks);
    }
}
