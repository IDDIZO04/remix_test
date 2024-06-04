// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20 <=0.9.0;

contract crud{

struct item{
    string name;
    string age;
    uint256 id;
    bool verified;
 }

// item[] public items;
// uint256 public nextid = 1;

// function create(string memory _name, string memory _age) public{
//     uint256 id;
//     item.push(item(_name, _age, nextid, true));
//     nextid++;
//     if (availableId.length > 0) {
//     item.push(item(_name, _age, nextid, true));
//     nextid++;
//         // id = availableId[availableIds.length - 1];
//         // availableId.pop();
//     // } else {
//     //     id == nextId;

//     // }
//  }   

// // function readLength() public view returns(uint256){
// //     return items.length;
// // }

// function findId(uint256) internal view returns(uint256){
//     for(uint256 i=0; i < items.length; i++){
//         if(items[i].id == id){
//             return i;
//         }
//     }
//     revert ('does not exist');
// }


// function update(string memory _name, string memory _age, uint256 _id) public{
//     uint256 i = find(_id);
//     items[i].name = _name;
//     items[i].name = _age;
// }

// function remove(uint256 id) public{
//     uint256 i =find(id);
//     items[i] = items[item.length - 1];
//     items.pop();
// }

mapping  (uint256 => item) public items;
    uint256 public nextId = 1;

    function add(string memory name, string memory age) public{
        items[nextId] = item(name, age, nextId, true);
        nextId++;
    }
function read(uint256 id ) public view returns(string memory, string memory, uint256, bool) {
      require(items[id].verified, "does not exist");
    return (items[id].name, items[id].age, items[id].id, items[id].verified);
}

function update(uint256 id, string memory name, string memory age) public{
    require(items[id].verified, "does not exist");
    items[id].name = name;
    items[id].age = age;
}

function remove(uint256 id) public{
      require(items[id].verified, "does not exist");
    delete items[id];
}
}