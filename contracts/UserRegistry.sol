// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract UserRegistry {
    // lets create a struct to hold users information

    struct User{
        string name;
        uint256 id;
        bool isRegistered;
    }


    // create a mapping to link address to the users's folder, key is the users address and the vaue is their User folder

    mapping(address => User) public users;

    // dynamic array to keep track of all registered user address
    address[] public userAddresses;

    // a counter to give each new user a unique ID number
    uint256 private nextUserId = 1;

    event UserRegistered(address indexed userAddress, uint256 userId, string name);

    // function to let a new user aregister

    function registerUser(string memory _name) public {
        require(users[msg.sender].isRegistered == false, "User already registered");

        // create a new User ad fill it with the info
        users[msg.sender] = User({
            name: _name,
            id: nextUserId,
            isRegistered: true
        });

        // add new users to the list of addresses
        userAddresses.push(msg.sender);

        nextUserId++;

        emit UserRegistered(msg.sender, nextUserId - 1, _name);
    }

    // function to look up user'sId number

    function getUserId(address _userAddress) public view returns (uint256){
        return users[_userAddress].id;
    }
}