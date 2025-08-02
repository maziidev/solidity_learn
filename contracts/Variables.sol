// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Variables {

    uint256 public storedNumber;

    constructor(uint256 initalNumber){
        storedNumber = initalNumber;
    }

    function setStoredNumber(uint256 _newNumber) public{
        // this line changes the state variable's value.
        storedNumber = _newNumber;
        // local variable
        // uint256 tempNumber = 100;
    }


    function getDoubledStoredNumber() public view returns(uint256){
        uint256 doubled = storedNumber * 2;
        return doubled;
    }

}