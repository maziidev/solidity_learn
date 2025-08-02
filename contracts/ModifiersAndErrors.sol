// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract ModifiersAndErrors {

    address public owner;
    uint256 public balance;


    error InsufficientBalance(uint256 available, uint256 required);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier notZeroAddress(address _addr) {
        require(_addr != address(0), "Address cannot be the zero address");
        _;
    }

    // functions using these modifiers

    function transferOwnership(address _newOwner) public onlyOwner notZeroAddress(_newOwner) {
        owner = _newOwner;
    }

    // function using error handling

    function withdraw(uint256 _amount) public {
        require(_amount > 0, "Withdrawal amount must be greater than zero");

        require(balance >= _amount, "Insufficient balance for withdrawal");

        balance -= _amount;
    }

    // using assert

    function depositAndCheck() public payable{
        balance += msg.value;

        assert(balance >= msg.value);
    }

    // withdraw with revert
    function withdrawWithRevert(uint256 _amount) public {
        if(_amount > balance) {
            revert InsufficientBalance(balance, _amount);
        }
        balance -=_amount;
    }
}