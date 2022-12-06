// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Map{

    mapping(uint => address) public idToAddress; // id映射到地址
    mapping(address => address) public swapPair; // 币对的映射，地址到地址

    // 我们定义一个结构体 Struct
    // struct Student{
    //     uint256 id;
    //     uint256 score; 
    // }
    // mapping(Student => uint) public testVar;

      function writeMap (uint _Key, address _Value) public{
        idToAddress[_Key] = _Value;
    }
}