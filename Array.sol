// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Array {
    // 固定长度 Array
    uint256[8] array1;
    bytes1[5] array2;
    address[100] array3;

    // 可变长度 Array
    uint256[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;

    function arrayPush() public returns (uint256[] memory) {
        uint256[2] memory a = [uint256(1), 2];
        array4 = a;
        array4.push(3);
        return array4;
    }

    // 结构体
    struct Student {
        uint256 id;
        uint256 score;
    }
    Student student;

    //  给结构体赋值
    // 方法1:在函数中创建一个storage的struct引用
    function initStudent1() external {
        Student storage _student = student; // assign a copy of student
        _student.id = 11;
        _student.score = 100;
    }

         // 方法2:直接引用状态变量的struct
    function initStudent2() external{
        student.id = 1;
        student.score = 80;
    }
}
