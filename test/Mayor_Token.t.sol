    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.20;

    import "forge-std/Test.sol";
    import "../src/Mayor_Token.sol";

    contract Mayor_TokenTest is Test {
            Mayor_Token token;
                address owner;
                    address elizer;
                        address bob;

                            uint256 constant INITIAL_SUPPLY = 1_000_000;

                                function setUp() public {
                                            owner = address(this);
                                                    elizer = address(0x1);
                                                            bob = address(0x2);
                                                                    token = new Mayor_Token("MayorToken", "MAY", INITIAL_SUPPLY);
                                }

                                    function testInitialSupplyMintedToOwner() public {
                                                assertEq(
                                                                token.balanceOf(owner),
                                                                            INITIAL_SUPPLY * 10 ** token.decimals()
                                                );
                                    }

                                        function testTransfer() public {
                                                    uint256 amount = 1000;
                                                            token.transfer(bob, amount);
                                                                    assertEq(token.balanceOf(bob), amount);
                                        }

                                            function testApproveAndTransferFrom() public {
                                                        uint256 amount = 500;
                                                                token.approve(elizer, amount);

                                                                        vm.prank(elizer);
                                                                                token.transferFrom(owner, bob, amount);

                                                                                        assertEq(token.balanceOf(bob), amount);
                                            }
    }
                                                                             
                                                        
                                                    
                                                
                                            
                                                                                
                                        
                                                
                                    
                                

                                                                            
                                                                        
                                                                    
    