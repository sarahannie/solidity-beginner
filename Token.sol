// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public tknName;
    string public tknAbbrv;
    uint256 public totalSupply;

    // mapping variable here
    mapping(address => uint256) public balances;

    constructor() {
        tknName = "Annie Token";
        tknAbbrv = "ATN";
    }

    // mint function
     function mint(address _receiver, uint256 _mintAmount) public {
        // Make sure the address is valid
        require(_receiver != address(0), "Invalid address");
        // Increase total supply
        totalSupply += _mintAmount;
        // Increase the balance of the receiver
        balances[_receiver] += _mintAmount;
    }

    // burn function
    function burn(uint256 _burnAmount) public {
        // Make sure the function caller has sufficient balance
        require(balances[msg.sender] >= _burnAmount, "Insufficient balance");
        // Decrease the total supply
        totalSupply -= _burnAmount;
        // Decrease the balance of the function caller
        balances[msg.sender] -= _burnAmount;
    }

}
