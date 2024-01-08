// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract HelloWorld {
  function findSecondLarget(uint[] memory arr) public pure returns(uint){

    require(arr.length > 2, "Array is short");
    uint largest = arr[0];
    uint secondLargest = arr[1];

    if(secondLargest > largest){
      uint temp = secondLargest;
      secondLargest = largest;
      largest = temp;
    }

    for(uint i =0; i < arr.length; i++){
      if(arr[i] > largest){
        secondLargest = largest;
        largest = arr[i];
      }
      else if(arr[i] > secondLargest && arr[i] != largest ){
        secondLargest = arr[i];
      }
    }
    return secondLargest;
  }
}
      