//double
//1. name
//2. age

pragma solidity ^0.4.11;

contract three{
    
    struct two{
        string firstName;
        string lastName;
        uint age;
    }
    
    mapping (string => two) userInfo;
    
    function setInfo(string key, string _firstName, string _lastName, uint _age) returns(bool done){
        userInfo[key].firstName = _firstName;
        userInfo[key].lastName = _lastName;
        userInfo[key].age = _age;
        return true;
    }
    
    function getInfo(string key) constant returns(string, string, uint){
        return(userInfo[key].firstName, userInfo[key].lastName, userInfo[key].age);
    }

}