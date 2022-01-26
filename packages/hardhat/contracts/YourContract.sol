pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    // to write or update a state variable, you need to send a transaction
    // to read state variable for free, without sending a trasaction

    uint public num;

    // you need to send a transaction to write to a state variable
    function set(uint _num) public {
        num = _num;
    }

    // you can read from a state variable without sending a transaction
    function get() public view returns (uint) {
        return num;
    }


    // event SetPurpose(address sender, string greeting);
    string public greeting = "Building Unstoppable Apps!!!";


    function setGreeting(string memory newPurpose) public {
      greeting = newPurpose;
      console.log(msg.sender,"set greeting to",greeting);
      // emit SetPurpose(msg.sender, greeting);
    }

    // to support receiving ETH by default
    receive() external payable {}
    fallback() external payable {}
}
