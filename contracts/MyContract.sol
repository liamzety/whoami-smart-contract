// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract MyContract {
    string public name;
    uint256 public age;
    uint256 public hobbiesCount;

    // initiator - default values upon deployment
    constructor() public {
        name = "Liam";
    }

    struct Hobby {
        uint id;
        string title;
        bool isBeingPracticed;
    }

    mapping(uint => Hobby) public hobbies;

    function createHobby(string memory _title, bool _isBeingPracticed) public {
	  hobbiesCount++;
      hobbies[hobbiesCount] = Hobby(hobbiesCount, _title, _isBeingPracticed);
    }

    /* 
        1. public - visibility
        2. view - if we dont modify we just view it(getter)
        3. returns()
    */

    // Getters
    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    // Setters
    function setName(string memory _name) public {
        name = _name;
    }

    function setAge(uint256 _age) public {
        age = _age;
    }
}
