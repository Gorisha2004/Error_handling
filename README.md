# CarSpeedChecker<br />
This Solidity program is a simple program to check the speed of a car. This is done using three error handling functions in smart contracts revert, require and assert.<br />

**Description**<br />
The program has two public variables one to store the speed of the car and another to store the address of the owner, three functions checkUsingRequire(), checkUsingRevert() and setSpeed(). Also, there are two events SpeedChanged and SpeedCheckFailed which are emit in the setSpeed function. The require() method takes two arguments - first is the condition we want to check and second is the message that will be printed if the condition is not satisfied. If the speed of the car would be less than 100 then it will return the message in the return statement else the function will be terminated and the error message passed will pop up.<br />
Next is the revert() method which checks the condition and if the condition is false it will flag an error and will revert the current call. Since the function execution stops after the revert() statement, the remaining gas is also returned back to the user.<br />
In the last function, we can set the speed of the function as well as for checking condition it is using assert() method. It takes only single argument, i.e, the condition we have to check. If the condition is true, the function execution continues and if it fails then function execution is terminated with an error message.<br />
.<br />

**Getting Started Executing program** <br />
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.<br />
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., error.sol). Copy and paste the following code into the file:<br />
```
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

```
<br />
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.7" (or another compatible version), and then click on the "Compile token.sol" button.<br />

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "CarSpeedChecker" contract from the dropdown menu, and then click on the "Deploy" button.<br />

Once the contract is deployed, you can interact with it by calling the three functions. Pass the values in the function and call, you'll be able to see the desired output.
