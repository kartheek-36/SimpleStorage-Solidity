// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {

    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNNumber;
        string name;
    }  

    // Array to store list of people
    Person[] public listofpeople;

    // Mapping from name to favorite number
    mapping (string => uint256) public nametoFavorite;

    // Function to store a favorite number
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // Function to retrieve favorite number
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    // Function to add a new person
    function addPerson(string memory _name, uint256 _favoriteNumber) public {

        // Add person to array
        listofpeople.push(Person(_favoriteNumber, _name));

        // Add name and favorite number to mapping
        nametoFavorite[_name] = _favoriteNumber;
    }
}