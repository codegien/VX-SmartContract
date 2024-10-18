// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

    contract TokenSmartContract {
        address public minter;
        mapping (address => uint) public balances;
        event sendSuccess(address from, address to, uint amount);

         constructor() {
        minter = msg.sender;
    }
        function sendToken(address receiver, uint amount) public {
      
            require(amount<balances[msg.sender], "Not enough token to make the transaction");
            balances[msg.sender] -= amount;
            balances[receiver] += amount;
            emit sendSuccess(msg.sender, receiver, amount);

    }
    function mint(address receiver, uint amount) public {
        balances[receiver] += amount;
    }
    }