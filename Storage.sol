// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Storage {
    // function fCalldata(uint256[] calldata _x)
    //     public
    //     pure
    //     returns (uint256[] calldata)
    // {
    //     //参数为calldata数组，不能被修改
    //     // _x[0] = 0 //这样修改会报错
    //     // 1. storage：合约里的状态变量默认都是storage，存储在链上。

    //     // 2. memory：函数里的参数和临时变量一般用memory，存储在内存中，不上链。

    //     // 3. calldata：和memory类似，存储在内存中，不上链
    //     return (_x);
    // }

    // uint256[] x = [1, 2, 3]; // 状态变量：数组 x

    // function fStorage() public {
    //     //声明一个storage的变量 xStorage，指向x。修改xStorage也会影响x
    //     uint256[] storage xStorage = x;
    //     xStorage[0] = 100;
    // }

    // function fMemory() public view {
    //     //声明一个Memory的变量xMemory，复制x。修改xMemory不会影响x
    //     uint256[] memory xMemory = x;
    //     xMemory[0] = 100;
    //     xMemory[1] = 200;
    //     uint256[] memory xMemory2 = x;
    //     xMemory2[0] = 300;
    // }

    uint256 public x = 1;
    uint256 public y;
    string public z;

    function foo() external {
        // 可以在函数里更改状态变量的值
        x = 5;
        y = 2;
        z = "0xAA";
    }

    function bar() external pure returns (uint256) {
        uint256 xx = 1;
        uint256 yy = 3;
        uint256 zz = xx + yy;
        return (zz);
    }
}
