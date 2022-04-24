// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8;

/**
 * @title VariableSol
 */
contract VariableSol {
    uint8 public publicVar; // no intialization means 0
    uint8 private privateVar;
    uint8 inernalVar; // by not mentioning visibilty internal will be considered

    uint8 public publicVarVal = 8;
    uint8 private privateVarVal = 8;
    uint8 internalVarVal = 8;

    string favouriteString = "String";
    bool favouriteBool;
    address favouriteAddress = 0x3448Cc76E82BC18b9c3DE62116e513dFe12f6043;
    bytes32 favouriteBytes = "cat";
    int256 public maxPublicInt = type(int256).max;
}
