// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Function {
    uint256 public number = 5;

    // 默认
    function add() external {
        number = number + 1;
    }

    // pure: 纯纯牛马
    function addPure(uint256 _number)
        external
        pure
        returns (uint256 new_number)
    {
        new_number = _number + 1;
    }

    // view: 看客
    function addView() external view returns (uint256 new_number) {
        new_number = number + 1;
    }

    // internal: 内部
    function minus() internal {
        number = number - 1;
    }

    // 合约内的函数可以调用内部函数
    function minusCall() external {
        minus();
    }

    // payable: 递钱，能给合约支付eth的函数
    function minusPayable() external payable returns (uint256 balance) {
        minus();
        balance = address(this).balance;
    }

    // 返回多个变量
    function returnMultiple()
        public
        pure
        returns (
            uint256,
            bool,
            uint256[3] memory
        )
    {
        return (1, true, [uint256(1), 2, 5]);
    }

    // 命名式返回
    function returnNamed()
        public
        pure
        returns (
            uint256 _number,
            bool _bool,
            uint256[3] memory _array
        )
    {
        _number = 2;
        _bool = false;
        _array = [uint256(3), 2, 1];
    }

    // 命名式返回，依然支持return
    function returnNamed2()
        public
        pure
        returns (
            uint256 _number,
            bool _bool,
            uint256[3] memory _array
        )
    {
        return (1, true, [uint256(1), 2, 5]);
    }

    function returnNamed3() public pure {
        //使用解构式赋值的规则，支持读取函数的全部或部分返回值。
        uint256 _number;
        bool _bool;
        bool _bool2;
        uint256[3] memory _array;
        (_number, _bool, _array) = returnNamed();
        //读取部分返回值
        (, _bool2, ) = returnNamed();
    }
}
