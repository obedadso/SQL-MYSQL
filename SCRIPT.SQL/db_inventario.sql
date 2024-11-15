CREATE DATABASE IF NOT EXISTS db_inventario;
USE db_inventario;

CREATE TABLE IF NOT EXISTS proveedores(
    idProveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombreEmpleado VARCHAR (100) NOT NULL,
    nombreContacto VARCHAR (100) NOT NULL,
    telefono VARCHAR (20) NOT NULL,
    direccion VARCHAR (150) NOT NULL,
    pais VARCHAR (50) NOT NULL  
);