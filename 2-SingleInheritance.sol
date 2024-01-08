// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract RectangleDimension{
    uint internal a =10;
    uint internal b =20;

    function settingDimensions() view external returns(uint, uint){
        return(a,b);
    }
}

contract Area is RectangleDimension{
    function calculateArea() external view returns(uint){
        return a * b;
    }
}

contract Caller {
    Area obj = new Area();
    function letsTest() public view returns(uint){
        return obj.calculateArea();
    }
}