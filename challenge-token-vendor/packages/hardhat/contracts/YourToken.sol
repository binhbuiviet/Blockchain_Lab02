pragma solidity 0.8.20; //Do not change the solidity version as it negatively impacts submission grading
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// learn more: https://docs.openzeppelin.com/contracts/4.x/erc20

contract YourToken is ERC20 {
    constructor() ERC20("Gold", "GLD") {
        _mint( 0xdDc36E18446cE4B6f41a0aef8E70bDAFC42727BD , 1000 * 10 ** 18);
        _mint( msg.sender , 1500 * 10 ** 18);

    }
}
