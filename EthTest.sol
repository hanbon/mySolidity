// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract EthTest {
    // 触发fallback() 还是 receive()?
    //            接收ETH
    //               |
    //          msg.data是空？
    //             /  \
    //           是    否
    //           /      \
    // receive()存在?   fallback()
    //         / \
    //        是  否
    //       /     \
    // receive()   fallback()

    // 定义事件
    // 收到eth事件，记录amount和gas
    event Log(uint256 amount, uint256 gas);

    event Received(address Sender, uint256 Value);

    event fallbackCalled(address Sender, uint256 Value, string Data);

    // 接收ETH时释放Received事件

    //     receive()只用于处理接收ETH。一个合约最多有一个receive()函数，声明方式与一般函数不一样，不需要function关键字：receive() external payable { ... }。receive()函数不能有任何的参数，不能返回任何值，必须包含external和payable。

    // 当合约接收ETH的时候，receive()会被触发。receive()最好不要执行太多的逻辑因为如果别人用send和transfer方法发送ETH的话，gas会限制在2300，receive()太复杂可能会触发Out of Gas报错；如果用call就可以自定义gas执行更复杂的逻辑（这三种发送ETH的方法我们之后会讲到）
    receive() external payable {
        emit Log(msg.value, gasleft());
    }

    // fallback
    fallback() external payable {
        // emit fallbackCalled(msg.sender, msg.value, msg.data);
    }

    // 返回合约ETH余额
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
