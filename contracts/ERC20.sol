// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract ERC20 {
    uint256 public totalSupply;
    string public name;
    string public symbol;

    mapping(address => uint256) public balanceOf;
    

// To set the values of the 4 variables above.

constructor(string memory _name, string memory _symbol){
    name = _name;
    symbol = _symbol;
}

function decimals() external pure returns (uint8) {
    return 18;
}

function transfer(address recipient, uint256 amount) external returns (bool) {

require(recipient != address(0), "ERC20: transfer to the zero address");

uint256 senderBalance = balanceOf[msg.sender];

require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");

balanceOf[msg.sender] = senderBalance - amount;

balanceOf[recipient] += amount;

return true;

// Need to finish this by tommorow.

}

}



// I need to finish this