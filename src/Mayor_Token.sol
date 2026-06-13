// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Mayor_Token is ERC20, ERC20Burnable, ERC20Pausable, Ownable {
        constructor()
                ERC20("Mayowa Token", "MAY")
                        Ownable(msg.sender)
                            {
                                        _mint(msg.sender, 1000000 * 10 ** decimals());
                            }

                                function pause() public onlyOwner {
                                            _pause();
                                }

                                    function unpause() public onlyOwner {
                                                _unpause();
                                    }

                                        function _update(
                                                    address from,
                                                            address to,
                                                                    uint256 value
                                        ) internal override(ERC20, ERC20Pausable) {
                                                    super._update(from, to, value);
                                        }
}
                                        
                                        
                                
            