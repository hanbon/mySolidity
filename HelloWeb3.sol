// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract SendETH {
    // 用transfer()发送ETH
    function transferETH(address payable _to, uint256 amount) external payable {
        _to.transfer(amount);
    }
}
