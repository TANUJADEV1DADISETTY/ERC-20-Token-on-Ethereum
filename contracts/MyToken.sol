// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // Token metadata
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;

    // Total supply of the token
    uint256 public totalSupply;

    // Mapping to track balances: address => balance
    mapping(address => uint256) public balanceOf;

    // Mapping for allowances: owner => (spender => amount)
    mapping(address => mapping(address => uint256)) public allowance;

    // Constructor to initialize supply and assign it to creator
    constructor(uint256 _totalSupply) {
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = _totalSupply;
    }

        // Event emitted when tokens are transferred
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Event emitted when allowance is set
    event Approval(address indexed owner, address indexed spender, uint256 value);

        function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);

        return true;
    }

        function approve(address _spender, uint256 _value) public returns (bool success) {
        require(_spender != address(0), "Cannot approve zero address");

        allowance[msg.sender][_spender] = _value;

        emit Approval(msg.sender, _spender, _value);

        return true;
    }
        function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[_from] >= _value, "Insufficient balance");
        require(allowance[_from][msg.sender] >= _value, "Insufficient allowance");

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;

        emit Transfer(_from, _to, _value);

        return true;
    }
        function getTotalSupply() public view returns (uint256) {
        return totalSupply;
    }

    function getTokenInfo() public view returns (string memory, string memory, uint8, uint256) {
        return (name, symbol, decimals, totalSupply);
    }


}
