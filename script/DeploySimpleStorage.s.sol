// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract deploy is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simplestorage = new SimpleStorage(); //creation of new contract
        vm.stopBroadcast();
        return simplestorage;
    }
}
