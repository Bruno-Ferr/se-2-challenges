// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;  //Do not change the solidity version as it negativly impacts submission grading

import "hardhat/console.sol";
contract ExampleExternalContract {
   mapping (address => uint ) public balances;
  uint public constant threshold = 1 ether;
  event Stake(address from, uint value);

  bool public completed;

  function complete1() public payable {
    completed = true;
  }

  function stake() public payable {
    balances[address(this).balance] = msg.value;
    emit Stake(msg.sender, msg.value);
  }

}
