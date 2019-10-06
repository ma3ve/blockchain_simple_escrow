pragma solidity >=0.4.22 <0.6.0;
contract mycontract {
    string value;
    constructor() public
    {
        value="myvalue"
    }
    function get() public view returns(string)
    {
        return value;
    }
    function set(string _value)public
    {
        value=_value;
    }
}