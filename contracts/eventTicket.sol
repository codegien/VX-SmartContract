// SPDX-License-Identifier: MIT
    pragma solidity ^0.8.18;

    contract EventTicket{
       uint256 numberOfTicket;
       uint256 titketPrice;
       uint256 totalAmount;
       uint256 startAt;
       uint256 endAt;
       uint256 timeRange;
       string message = "Buy your first event ticket";

       constructor(uint256 _tickettPrice){
         titketPrice = _tickettPrice;
         startAt = block.timestamp;
         endAt = block.timestamp + 7 days;
         timeRange = (endAt - startAt)/60/60/24;
       }

       function buyTicket(uint256 _value) public returns(uint256 _ticketId ){
         numberOfTicket ++;
         totalAmount += _value;
         _ticketId = numberOfTicket;
       }

       function getAmount() public view returns(uint256){
            return totalAmount;
       }
    }