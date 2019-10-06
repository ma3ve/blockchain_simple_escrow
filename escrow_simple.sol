pragma solidity >=0.4.22 <0.7.0;
contract escrow {
    address agent;
    mapping(address=>uint256) deposits; 
    constructor() public{
        agent = msg.sender;      }
    modifier onlyagent(){
        require(agent == msg.sender);  
        _;
    }
    function deposit (address depositor) public onlyagent payable {
        deposits[depositor] = deposits[depositor]+msg.value;
    }
    function withdraw(address payable withdrawer) public onlyagent{
        withdrawer.transfer(deposits[withdrawer]);
        deposits[withdrawer]=0;
    }
}
