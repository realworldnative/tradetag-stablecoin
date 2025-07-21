
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TradeTagStablecoin is ERC20 {
    address public owner;

    constructor() ERC20("TradeTag Stablecoin", "TTSUSD") {
        owner = msg.sender;
    }

    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "Only owner can mint");
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public {
        require(msg.sender == owner, "Only owner can burn");
        _burn(from, amount);
    }
}
