// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Yeye{
     event Log(string msg);
    // 定义3个function: hip(), pop(), man()，Log值为Yeye。
    function hip() public virtual{
        emit Log("Yeye hip");
    }
    function pop() public virtual{
        emit Log("Yeye");
    }
    function yeye() public virtual {
        emit Log("Yeye");
    }
}
