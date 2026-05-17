// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Biblioteca233310 {

    struct Libro {
        uint256 id;
        string titulo;
        uint256 anio;
    }

    Libro[] public libros;
    address public dirContrato = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    constructor() {
        console.log("Ejecutado por: 233310 - Matias Felipe Alcalde Lavado");
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _anio) public {
        libros.push(Libro(_id, _titulo, _anio));
        console.log("Ejecutado por: 233310 - Matias Felipe Alcalde Lavado");
    }

    function contarElementos() public view returns(uint256) {
        console.log("Ejecutado por: 233310 - Matias Felipe Alcalde Lavado");
        return libros.length;
    }
}