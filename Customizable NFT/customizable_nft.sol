// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFT is ERC721, Ownable {
    using SafeMath for uint256;

    // Evento emitido quando um novo NFT é criado
    event NFTCreated(address indexed owner, uint256 tokenId, string tokenURI);

    // Mapeia o token ID para o URI do metadado do NFT
    mapping(uint256 => string) private _tokenURIs;

    // Construtor que define o nome do NFT e o símbolo do NFT
    constructor() ERC721("MeuNFT", "MNFT") {}

    // Função para criar um novo NFT
    function createNFT(address to, uint256 tokenId, string memory tokenURI) external onlyOwner {
        _mint(to, tokenId);
        _setTokenURI(tokenId, tokenURI);
        emit NFTCreated(to, tokenId, tokenURI);
    }

    // Função interna para definir o URI do metadado do NFT
    function _setTokenURI(uint256 tokenId, string memory tokenURI) internal {
        require(_exists(tokenId), "NFT não existe");
        _tokenURIs[tokenId] = tokenURI;
    }

    // Função para obter o URI do metadado do NFT
    function getTokenURI(uint256 tokenId) external view returns (string memory) {
        return _tokenURIs[tokenId];
    }
}
