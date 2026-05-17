// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Biblioteca233310 {

    struct Libro {
        uint256 id;
        string titulo;
        uint256 anio;
        bool estado;
    }

    mapping(uint256 => Libro) public libros;
    uint256 public cantidad;
    address public dirContrato = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    modifier ejecutadoPor() {
        console.log("Ejecutado por: 233310 - Matias Felipe Alcalde Lavado");
        _;
    }

    constructor() ejecutadoPor {
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _anio) public ejecutadoPor {
        require(libros[_id].id == 0, "Ya existe un libro con ese ID");
        require(bytes(_titulo).length > 0, "El titulo no puede ser vacio");
        libros[_id] = Libro(_id, _titulo, _anio, true);
        cantidad++;
    }

    function contarElementos() public view ejecutadoPor returns(uint256) {
        return cantidad;
    }

    function inactivarElemento(uint256 _id) public ejecutadoPor {
        libros[_id].estado = false;
    }

    function pintarElementosActivos() public view ejecutadoPor {
        for(uint256 i = 0; i < cantidad; i++) {
            if(libros[i].estado == true) {
                console.log("Libro activo:", libros[i].id, libros[i].titulo);
            }
        }
    }
}