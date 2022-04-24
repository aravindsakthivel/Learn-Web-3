// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8;

/**
 * @title FunctionSol
 */
contract FunctionSol {
    // appears blue in color in deployed contract because this function have view function
    uint8 public favouriteNumber;

    // appears orange in color in deployed contract because this function doesn't have view function
    function store(uint8 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    // with view we can read state data appears blue in color in deployed contract because this function have view function
    // we can't modify state
    function returnViewFn() public view returns (uint8) {
        return favouriteNumber;
    }

    // appears blue in color in deployed contract because this function have view function
    // in pure function we can't read data from state
    function returnPureFn(uint8 input) public pure returns (uint8) {
        uint8 byt = input;
        return byt;
    }
}
