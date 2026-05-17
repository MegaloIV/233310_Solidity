pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Biblioteca233310 {

    struct Libro {
        uint256 id;
        string titulo;
        uint256 anio;
    }

    Libro[] public libros;

    constructor() {
        console.log("Ejecutado por: 233310 - Matias Felipe Alcalde Lavado");
    }
}