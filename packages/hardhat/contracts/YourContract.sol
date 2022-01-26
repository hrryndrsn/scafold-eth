pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    // Constants
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;

    //immuatables are constants which can be set inside the constructor
    address public immutable MY_IMMUT_ADDRESS;
    uint public immutable MY_IMMUT_UINT;

    constructor(uint _uint) {
        MY_IMMUT_UINT = _uint;
        MY_IMMUT_ADDRESS = msg.sender;
    // what should we do on deploy?
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
