//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // Stating our version

contract SimpleStorage{
    uint256 public favoriteNumber;

    struct Person{
        uint256 favNo;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }


    function addPerson(string memory _name, uint256 _favNo) public{
        listOfPeople.push(Person(_favNo,_name));
        nameToFavoriteNumber[_name] = _favNo;
    }
    
    
}
