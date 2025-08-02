// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Vehicle {

    string public make;
    string public model;

    constructor(string memory _make, string memory _model) {
        make = _make;
        model = _model;
    }

    // to declare a function that can be overridden by a child contract we use the virtual keyword in it

    function getDetails() public view virtual returns (string memory){
        return string.concat("This vehicle is a ", make, " ", model);
    }
}

contract Car is Vehicle {
    uint256 public year;
    constructor(string memory _make, string memory _model, uint256 _year) Vehicle(_make, _model) {
        year = _year;
    }

    function getDetails() public view override returns(string memory) {
        string memory parentDetails = super.getDetails();
        return string.concat(parentDetails, " from ", getYearString());
    }

    function getYearString() internal view returns (string memory) {
        if(year == 2024){
            return "2024";
        }
        return "Unknown year";
    }
}