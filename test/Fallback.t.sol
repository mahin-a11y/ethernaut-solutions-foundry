//SPDX-license-Identifier:MIT 
pragma solidity ^0.8.0 ;

import {Test,console} from"forge-std/Test.sol" ;

import {Fallback} from "../src/Fallback.sol" ;

contract testfallback is Test {
  address mahin ; // this create the address
 Fallback myfallback ;
function setUp () public {

  mahin = makeAddr("mahin"); // the makeaddr keyword gives address to the mahin 
  vm.prank(mahin);
  myfallback = new Fallback () ;

}


function testWhoisOwner () public { // this fuction is to checks the owner status
    address expctedowner = mahin ;
  assertEq (myfallback.owner(),expctedowner) ;   
  console.log (mahin) ;
}

function testContribution () public {
  uint256 SendAmount = 0.0001 ether ;
  address user = makeAddr("user");
  hoax(user,1 ether);

  myfallback.contribute {value : SendAmount} () ;
  uint256 actualcontri = myfallback.contributions (user) ;
  assertEq (actualcontri,SendAmount) ;
}


}
