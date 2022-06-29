// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Treasury is Ownable {
    bool public isReleased;

    constructor(){
        isReleased = false;
    }

    function releaseFunds(address payee, uint256 amount) public onlyOwner
    {
        isReleased = true;
        payable(payee).transfer(amount);
    }
}