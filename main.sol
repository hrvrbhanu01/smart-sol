// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Greeting {
    string public name;
    string public greetingPrefix = "Hello";

    constructor(string memory initialName){
        name = initialName;
    }

    function setName(string memory newName) public { //public mean it can be called anywhere in the contract
        name = newName;

    }

    function getGreeting() public view returns (string memory){ //view means this function is not going to change any data onto the Blockchain it will only read data from the Blockchain.
        return string(abi.encodePacked(greetingPrefix, name));
    }

}