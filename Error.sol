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
