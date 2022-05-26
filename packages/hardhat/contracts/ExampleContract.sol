pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    // soldity supports if, else if and else as well as ternary
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) public pure returns (uint) {
         // if (_x < 10) {
         //     return 1;
         // }
         // return 2

         // shorthand 
         return _x < 10 ? 1 : 2;
    }

    // to support receiving ETH by default
    receive() external payable {}
    fallback() external payable {}
}
