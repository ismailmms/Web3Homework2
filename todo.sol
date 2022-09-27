//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract TodoList{

    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;
    
    //We insert todos task with create function
    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));

    }
    // Solidity has already created a receiver automatically. But you can use this function for practice.

   function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }
    // update
    function updatex(uint _index) external view returns(string memory , bool){
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update completed
    function toogleCompleted(uint _index) external{
        todos[_index].completed = !todos[_index].completed;
    }
}