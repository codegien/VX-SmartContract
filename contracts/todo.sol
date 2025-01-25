// SPDX-License-Identifier: MIT
  pragma solidity ^0.8.18;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todo;
    
    function create(string calldata _txt) public{
        todo.push(Todo({text: _txt, completed: false}));
    }
    
   function get(uint _index) public view returns (string memory text, bool completed){
       return(todo[_index].text,todo[_index].completed);
   }

    function updateText(uint _index, string calldata _text)public{
        Todo storage todoItem = todo[_index];
        todoItem.text=_text;
    }

    function toggleCompleted(uint _index)public{
        Todo storage todoItem = todo[_index];
        todoItem.completed= !todoItem.completed;
    }
}