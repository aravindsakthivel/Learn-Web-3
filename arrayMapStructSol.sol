// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8;

/**
 * @title StructsSol
 **/
contract arrayMappingStructsSol {
    // Array
    // int array create with uint type because TypeError: Type uint8[1] memory is not implicitly convertible to expected type int256[] storage ref.
    // Dynamic array
    uint256[] emptyUintArray;
    // Fixed Array
    uint256[1] lengthUintArray = [1];
    // both can be intialized empty and with values;

    string[] verifiedResult = [
        "verified successfully",
        "verified failed",
        "not clear"
    ];
    string[1] lengthStringArray = ["name"];

    // Struct
    struct People {
        uint256 age;
        string name;
    }

    People singlePeople = People({age: 26, name: "Aravind"});
    People[] peopleArray;

    // Mapping kind of like array of object
    mapping(string => uint256) public peopleAge;

    // mentioning _ to differentiate not required
    // string is actually an object so it needs an storage location either memory(removed after execution) or storage(permanent)
    function addPeople(string memory _name, uint256 _age) public {
        peopleArray.push(People({age: _age, name: _name}));
        peopleAge[_name] = _age;
    }

    function getPeople() public view returns (People[] memory) {
        return peopleArray;
    }
    // test
    // when deployed enter value for addPeople, then give index value in peopleArray after that
    // we can see the value but try to see value not in index won't through error. you will see the last shown value
    
}
