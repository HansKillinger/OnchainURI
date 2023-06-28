// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/Base64.sol";

contract OnchainURI {
    using Strings for uint256;

    function createURI(uint256 tokenId)
        public
        pure
        returns (string memory)
        {
            bytes memory dataURI = abi.encodePacked(
                '{',
                    '"name": "My721Token #', tokenId.toString(), '"',
                    // Replace with extra ERC721 Metadata properties
                '}'
            );

            return string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(dataURI)
                )
            );
        }
}