// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract CarSpeedChecker {
    uint public speed;
    address public owner;

    // Event to log speed changes
    event SpeedChanged(uint newSpeed);

    // Event to log when a speed check fails
    event SpeedCheckFailed(string message);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    constructor(){
        owner = msg.sender;
    }

    // Function using require to check if the speed of car is less than 100
    function checkUsingRequire(uint _speed) public pure returns (string memory) {       
        require(_speed < 100, "You must slow down.");
        return "Keep going";
    }

    // Function using revert to check if the speed of the car is greater than 100
    function checkUsingRevert(uint _speed) public pure returns (string memory) {        
        if (_speed > 100) {
            revert("You must slow down.");
        }
        return "Keep going";
    }

    // Function to set the speed and using assert to check internal invariants
    function setSpeed(uint _speed) public onlyOwner {                
        speed = _speed;
        emit SpeedChanged(speed);

        // Assert that speed is less than 100
        if (speed >= 100) {
            emit SpeedCheckFailed("Speed is not less than 100.");
        }
        assert(speed < 100);
    }
}
