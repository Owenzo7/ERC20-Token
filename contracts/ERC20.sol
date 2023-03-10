// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract ERC20 {
    uint256 public totalSupply;
    string public name;
    string public symbol;
    

// To set the values of the 4 variables above.

constructor(string memory _name, string memory _symbol){
    name = _name;
    symbol = _symbol;
}

function decimals() external pure returns (uint8) {
    return 18;
}
}