# Scolarship Eligibility Checker<br />
This Solidity program is a simple program to check if one is eligible for a scolarship or not. This is done using three error handling functions in smart contracts `revert()`, `require()` and `assert()`.<br />

# Description
<br />
# Features
1. Checks if a student is eligible for merit based, sports or any of the scolarship.<br />
2. Restrict access to the owner using a modifier.<br />
3. Checks if marks are not negative.<br />
4. Use events to log changes in marks.<br />
5. Handle errors and validations with require(), assert(), and revert().<br />
<br />
# Public variables <br />
1. uint public marks: stores the marks of the student<br />
2. address public owner: stores the address of the owner<br />
<br />
# Events<br />
1. event marksChanged(uint256 currentMarks): Logs the new marks whenever they are updated.<br />
# Modifiers<br />
1. modifier onlyOwner(): Restricts function access to the contract owner.<br />
<br />
# Constructor<br />
1. constructor(): Sets the deployer of the contract as the owner.<br />
<br />
# Functions <br />
1. CheckMeritScolarship()<br />
- Checks if the marks are greater than 85 to be eligible for merit.<br />
- Updates the marks variable and emits the marksChanged event.<br />
- Restricted to the owner.<br />
<br />
2. CheckSportsScolarship()<br />
- Checks if the marks are greater than 75 to be eligible for Sports scolarship.<br />
- Updates the marks variable and emits the marksChanged event.<br />
- Restricted to the owner.<br />
<br />
3. CheckScolarshipEligibility()<br />
- Checks if the marks are positive.<br />
- Checks if the marks are less than 60, if it is less than 60 then student is not eligible for any scolarship.<br />
- Updates the marks variable and emits the marksChanged event.<br />
- Restricted to the owner.<br />
<br />

**Getting Started Executing program** <br />
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.<br />
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., error.sol). Copy and paste the following code into the file:<br />
[Error.sol](https://github.com/Gorisha2004/Error_handling/blob/main/Error.sol)
<br />

<br />
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.7" (or another compatible version), and then click on the "Compile token.sol" button.<br />

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "CarSpeedChecker" contract from the dropdown menu, and then click on the "Deploy" button.<br />

Once the contract is deployed, you can interact with it by calling the three functions. Pass the values in the function and call, you'll be able to see the desired output.
