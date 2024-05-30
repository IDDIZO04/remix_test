// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract exampleContract {

    // mapping (uint256 => mapping (uint256 => uint256)) myMapping;

    // function setMapping(uint256 key, uint256 key2, uint256 key3,uint256 value) public {
    //     myMapping[key] [key2] [key3] = value;
    // }

    // function getValue(uint256 key, uint key2, uint key3) public view return {


    // }


    mapping(address => uint256) public balances;

    function setSomeonesBalance(address owner, uint256 amount) public {
        balances[owner] = amount;
    }

    function transferTokensBetweenAddresses(address sender, address receiver, uint256 amount) public {
        balances[sender] -= amount;   // deduct/debit the sender's balance
        balances[receiver] += amount; // credit the reciever's balance
    }
    function wh0ami() public view returns (address, address) {
        address sender = msg.sender;
        address _contract = address(this);
        return (sender, _contract); 
    }
}
