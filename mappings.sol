pragma solidity ^0.8.2;


contract SimpleMappingExample {

    mapping(uint => bool) public myMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    mapping(address => bool) public myAddressMapping;

    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true;
    }

    mapping(uint => mapping(uint =>bool)) uintUintBoolMapping;

    function setUintUintBoolMapping(uint _index1, uint _index2, bool _value) public {
        uintUintBoolMapping[_index1][_index2]= _value;
    }

     function getUintUintBoolMapping(uint _index1, uint _index2) public view returns(bool){
       return uintUintBoolMapping[_index1][_index2];
    }

}