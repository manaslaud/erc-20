// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {Script} from "lib/forge-std/src/Script.sol";
import {OurToken} from "../src/OurToken.sol";

contract DeployOurToken is Script{
    uint256 public constant initialSupply=1000 ether;
    function run ()external{
        vm.startBroadcast();
        new OurToken(initialSupply);
        vm.stopBroadcast();
    }
}