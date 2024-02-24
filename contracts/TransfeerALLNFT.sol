pragma solidity ^0.8.4;

interface IERC721 {
    function transferFrom(address from, address to, uint256 tokenId) external;
}

contract TransferNFT {
    // NFT転送関数
    function transferNFTs(address nftContract, address from, address to, uint256[] calldata tokenIds) external {
        for (uint256 i = 0; i < tokenIds.length; i++) {
            // NFTの転送を行う
            IERC721(nftContract).transferFrom(from, to, tokenIds[i]);
        }
    }
}
