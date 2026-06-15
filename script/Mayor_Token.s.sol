// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/Mayor_Token.sol";

contract DeployMayor_Token is Script {
            function run() external {
                        vm.startBroadcast();

                                new Mayor_Token(
                                                    "MayorToken",
                                                                "MAY",
                                                                            1_000_000
                                );

                                        vm.stopBroadcast();
            }
}
                                
            
