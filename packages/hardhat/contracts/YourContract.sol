pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

    // you pay gas_spent * gas_price amount of ether, where:
    // - gas is a unit of computation
    // - gas_spent is the total amount of gas used in a transaction
    // - gas_price is how much ether you are willing to pay per gas.

    // Using up all the gas that you send causes your tx to fail.
    // state changes are undone.
    // gas spent are not refunded.
    uint public i = 0;
    function forever() public {
        // Here we run a loop until all of the gas are spent
        while (true) {
            i += 1;
        }
    }

    // to support receiving ETH by default
    receive() external payable {}
    fallback() external payable {}
}
