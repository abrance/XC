pragma solidity ^0.4.0;

//file indeed for compile
//may store in somewhere and import
contract MappingExample{
    struct SaveData{
        bytes filename;
        bytes32 file_md5;
    }

    mapping(address => SaveData) public balances;

    function update(SaveData sd) returns (address addr){
        balances[msg.sender] = SaveData(sd);
        // msg.sender is address of caller
        return msg.sender;
    }
}


contract MappingUser{

    address conAddr;
    address userAddr;

    function f() returns (uint amount){
    //address not resolved!
        conAddr = hex"0xf2bd5de8b57ebfc45dcee97524a7a08fccc80aef";
        userAddr = hex"0xca35b7d915458ef540ade6068dfe2f44e8fa733c";

        return MappingExample(conAddr).balances(userAddr);
    }
}