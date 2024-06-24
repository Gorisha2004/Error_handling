**MyToken**
This Solidity program is a simple program to check the divisibility of a number by 2. This is done using three error handling functions in smart contracts revert, require and assert.

**Description**
The program has a public variable to store the value passed, three functions checkUsingRequire(), checkUsingRevert() and setNum(). The require() method takes two arguments - first is the condition we want to check and second is the message that will be printed if the condition is not satisfied. If the number will be divisible by 2 then it will return true else the function will be terminated and the message passed will pop up.
Next is the revert() method which checks the condition and if the condition is false it will flag an error and will revert the current call. Since the function execution stops after the revert() statement, the remaining gas is also returned back to the user.
And the last function is using assert() method. It takes only single argument, i.e, the condition we have to check. If the condition is true, the function execution continues and if it fails then function execution is terminated with an error message.
These were the three methods all checking the divisbilty of a number by 2.

**Getting Started Executing program** 
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., error.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {
    uint public num;

    function checkUsingRequire(uint _i) public pure returns (bool) {       // Function using require to check if the number is divisible by 2
        require(_i % 2 == 0, "Number must be divisible by 2");
        return true;
    }

    function checkUsingRevert(uint _i) public pure returns (bool) {        // Function using revert to check if the number is divisible by 2
        if (_i % 2 != 0) {
            revert("Number must be divisible by 2");
        }
        return true;
    }
   
 function setNum(uint _num) public {                // Function using assert to check internal invariants
        num = _num;
        
        assert(num % 2 == 0);
    }

}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.7" (or another compatible version), and then click on the "Compile token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyContract" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the three functions. Pass the values in the function and call, you'll be able to see the desired output.
