// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
   uint private count;

   constructor() {
       count = 0;
   }

   event CountIncremented(uint newCount);

   function getCount() public view returns (uint) {
       return count;
   }

   function incrementCount() public {
       count++;
       emit CountIncremented(count);
   }
}

