pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/voting.sol";

contract Testeth {
    function testInitialBalanceUsingDeployedContract() {
        eth meta = eth(DeployedAddresses.eth());

        uint256 expected = 100;

        Assert.equal(
            meta.getBalance(tx.origin),
            expected,
            "Owner should have 100 eth initially"
        );
    }

    function testInitialBalanceWithNeweth() {
        eth meta = new eth();

        uint256 expected = 100;

        Assert.equal(
            meta.getBalance(tx.origin),
            expected,
            "Owner should have 100 eth initially"
        );
    }
}
