pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    //bool
    bool public boo = true;

    //uint 
    uint8 public u8 = 1;
    uint16 public u256 = 456;
    uint public u = 123; // uint is an alias for uint256

    int8 public i8 = -1;
    int16 public i16 = -525;
    int public i = -123;

    //min and max
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    //addr 
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    //bytes
    bytes1 a = 0xb5;
    bytes1 b = 0x65;
    
    //default vars
    bool public defaltBoo; // false
    uint public defaultUint; //0
    int public defaultInt; //0
    address public defaultAddr; //0x000000000000000000000000000000;

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
