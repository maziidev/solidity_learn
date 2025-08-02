// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract MyFirstContract{
    uint256 public myNumber;

    constructor(uint256 _initalNumber) {
        myNumber = _initalNumber;
    }

    function setMyNumber(uint256 _newNumber) public {
        myNumber = _newNumber;
    }


    function getMyNumber() public view returns (uint256){
        return myNumber;
    }
}