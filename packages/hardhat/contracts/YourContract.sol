pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    // State variables are stored on the blockchain
    string public text = "Zord";
    uint public num = 123;

    function doSomething() public {
        // local variables are not stored on the blocked chain
        uint i = 456;
        
        // here are some global variables 
        uint timestamp = block.timestamp; // the current timestamp
        address sender = msg.sender; // address of the caller
    }

    // event SetPurpose(address sender, string greeting);
    string public greeting = "Building Unstoppable Apps!!!";

    constructor() payable {
    // what should we do on deploy?
    }

    function setGreeting(string memory newPurpose) public {
      greeting = newPurpose;
      console.log(msg.sender,"set greeting to",greeting);
      // emit SetPurpose(msg.sender, greeting);
    }

    // to support receiving ETH by default
    receive() external payable {}
    fallback() external payable {}
}
