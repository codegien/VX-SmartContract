// SPDX-License-Identifier: GPL
pragma solidity ^0.8.26;

contract sendHey {
    string public hey;
    uint256 public no;
    // constructor (string memory _hey, uint _no){
    //     hey = _hey;
    //     no = _no;
    // }

    function updateData (string memory _hey, uint _no)public {
        hey = _hey;
        no = _no;
    }
}
contract updateNFT{
    uint public noOfNFT;
    function addNFT ()public{
        noOfNFT +=1;
    }
    function minusNFT ()public{
        noOfNFT -=1;
    }

    function checkTotalNFT()public view returns(uint256){
        return noOfNFT;
    }
//Arrays
//-- fixed bytes size array
//-- dynamic bytes size array

    bytes1 public a = 0xb5;
    bytes1 public b = 0xb6;

//Data Type: ADDRESS
    
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public defaultAddress;

}

contract mintNFT {
    uint public price;
    function setFloorPrice(uint unisolAmount)public view returns (uint256){
            
    }
    //Data Default Type
    bool public defaultBool;
    uint public defaultNum;
    int public defaultInt;
    address public mintAddress;
}

contract LNFunction {
    uint256 public hey;

    function getValue() public view returns(uint){
        return hey;
    }
    function updateValue(uint256 _hey) public{
        hey= _hey;
    }
    function makeSum(uint256 _a, uint256 _b) public returns(uint){
        hey = _a + _b;
    return _a + _b;
}
}

contract StateVariable{

    string public myString;
    uint256 public myNum;
    uint256[] public myArray;

    constructor(string memory _text, uint256 _no){
        myString = _text;
        myNum = _no;
    }
    //WHILE constructor can be used to update 
    //state variable once function can be used 
    //to update state variables multiple times
    function update(string memory _text, uint256 _no)public {
        myString = _text;
        myNum = _no;
    }

    //WE HAVE TWO TYPES OF VARIABLE SCOPE
    //1. State Variable : this comes immediately inside contract line i.e myString. this get stored on the block chain
    //2. Local variable : this is confined to a function its some sort of memory in a function
    function hasLocalVariable()public returns(address, uint256, uint256){
        //View is only used to read data from the state variable
        uint256 i = 33;
        myNum = i;
        i += 45;
        address myAddress = address(1);

        return (myAddress, i, myNum);

    }
}

    contract GlobalVariable{
        //COMMON GLOBAL VARIABLES
        address public owner;
        address public Myblockhash;
        uint256 public difficulty;
        uint256 public gasLimit;
        uint256 public number;
        uint256 public timestamp;
        uint256 public value;
        uint256 public nowOn;
        address public origin;
        uint256 public gasprice;
        bytes public callData;
        bytes4 public firstfour;

        constructor (){
            owner = msg.sender;
            Myblockhash = block.coinbase;
            difficulty = block.difficulty;
            gasLimit = block.gaslimit;
            number = block.number;
            timestamp = block.timestamp;
            gasprice = tx.gasprice;
            origin = tx.origin;
            callData = msg.data;
            firstfour = msg.sig;
            // value = msg. value;
            //nowOn = now
   
        }
    }

    //Pure keyword
    contract Pure{
        uint256 num1 = 4;
        uint256 num2 = 7;

        function getValues() public pure returns(uint256, uint256){
            uint256 myNum1 = 200;
            uint256 myNum2 = 15;
            return (myNum1, myNum2);
        }
    }