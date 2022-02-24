pragma solidity ^0.5.0;

contract Adoption {
  address[16] public adopters;
  // adoption a monster
  function adopt(uint monsterId) public returns (uint) {
    require(monsterId >= 0 && monsterId <= 15);
    
    adopters[monsterId] = msg.sender;
    
    return monsterId;
  }
  // retrivieng adopters
  function getAdopters() public view returns (addres[16] memory) {
  return adopters;
  }
}
