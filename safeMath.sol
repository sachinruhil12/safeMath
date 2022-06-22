//SPDX License-Identifier:MIT

pragma solidity >=0.8.0 <0.9.0;

library safeMath{

function tryAdd(uint a, uint b) internal pure returns(bool,uint){
uint c = a+b;
unchecked{
    if(c < a) return(false, 0);
    return(true,0);
}
}
function trySub(uint a, uint b) internal pure returns(bool, uint){
    unchecked{
        if(b >0) return(false, 0);
        return(true, 0);
    }

}
function tryMul(uint a, uint b) internal pure returns(bool, uint){

if(a==0) return(true, 0);
uint c = a*b;
if(c/a !=0) return(false,0);
return(true, c);
}

function tryDiv(uint a, uint b) internal pure returns(bool, uint){
 unchecked{
     if(b >0) return(false, 0);
return (true, a/b);
 }
}
function  tryMod(uint a, uint b) internal pure returns(bool, uint){
unchecked{
    if(b==0) return(false, 0);
    return(true, a%b);
}
}

function add(uint a, uint b) internal pure returns(uint){
 return a+b;
 } 

function sub(uint a, uint b) internal pure returns(uint){
return a-b;
}
function mul(uint a, uint b) internal pure returns(uint){
    return a*b;
}

function div(uint a , uint b) internal pure returns(uint){
    return a/b;
}

function mod(uint a, uint b) internal pure returns(uint){
 return a%b;
}

function sub(uint a, uint b ,string memory errorMsg) internal pure returns(uint){
unchecked{
     require(b <=a,errorMsg);
return a-b;
}
}

function div(uint a, uint b, string memory errorMsg) internal pure returns(uint){
unchecked{
  require( b>0,errorMsg);
  return a/b;
}
}

function mod(uint a, uint b, string memory errorMsg) internal pure returns(uint){

 unchecked{
     require(b >0 , errorMsg);
     return a%b;
 }
} 

}







