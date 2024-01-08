// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract RectangleDimension{
    uint internal a =10;
    uint internal b =20;
    uint internal c =30;

    function settingDimensions() view external returns(uint, uint){
        return(a,b);
    }
}

contract Area is RectangleDimension{
    function calculateArea() internal view returns(uint){
        return a * b;
    }
}

contract Volume is Area{
    function calculateVoume() external view returns(uint){
        return calculateArea() * c;
    }
}

contract Caller {
    Volume obj = new Volume();
    function letsTest() public view returns(uint){
        return obj.calculateVoume();
    }
}