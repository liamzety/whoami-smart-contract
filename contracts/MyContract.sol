// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract MyContract {
    string public name;
    uint256 public age;

    constructor() public {
        name = "Liam";
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
