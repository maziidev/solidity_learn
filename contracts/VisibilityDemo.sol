// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract VisibilityDemo {

    uint256 public publicNumber = 10;
    uint256 private privateNumber = 20;
    uint256 internal internalNumber = 30;

    function setPublicNumber(uint256 _newNumber) public {
        publicNumber = _newNumber;
    }

    function getPrivateNumber() public view returns (uint256) {
        return _readPrivateNumber();
    }

    function _readPrivateNumber() private view returns (uint256) {
        return privateNumber;
    }

    function _getInternalNumber() internal view returns(uint256) {
        return internalNumber;
    }

    function getNumbers() external view returns(uint256, uint256, uint256) {
        return(publicNumber, _getInternalNumber(), _readPrivateNumber());
    }
}


contract DerivedContract is VisibilityDemo{
    function accessInternalNumberFromDerived() public view returns (uint256) {
        return _getInternalNumber();
    }
}