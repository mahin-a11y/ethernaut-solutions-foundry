//SPDX-License-Identifier :MIT
pragma solidity ^0.8.0 ;

import {Test,console} from "forge-std/Test.sol" ;
import {CoinFlip} from "../src/CoinFlip.sol" ;

contract testCoinFlip is Test {

    CoinFlip myCoinFlip ;

    function setUp () public {

        myCoinFlip = new CoinFlip () ; 
    }

    function testConsecutiveWins () public {

        uint256 ValueOfConsecutiveWins = 0 ;

        myCoinFlip.consecutiveWins () ;

        assertEq(myCoinFlip.consecutiveWins (), ValueOfConsecutiveWins);

    }

}
