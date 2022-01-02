// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    uint storedData;
    string public name;

    function set(uint x) public {
        storedData = x;
    }

    function set(string memory Name) public{
        name = Name;
    }
    
    function getName() public view returns (string){
        return name;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}