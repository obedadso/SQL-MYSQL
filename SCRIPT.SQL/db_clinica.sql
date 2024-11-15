CREATE DATABASE IF NOT EXISTS db_clinica;
USE db_clinica;

CREATE TABLE IF NOT EXISTS pacientes(
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR (100) NOT NULL,
    fechaNacimiento DATE
);
    
CREATE TABLE IF NOT EXISTS doctores(
    idDoctor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR (100) NOT NULL,
    especialidad VARCHAR (100) NOT NULL
  
);

CREATE TABLE IF NOT EXISTS citas(
    idCitas INT PRIMARY KEY AUTO_INCREMENT,
    idPacienteINT FOREIGN KEY (idPaciente) REFERENCES pacientes (idPaciente),
    idDoctor INT FOREIGN KEY (idDoctor) REFERENCES doctores (idDoctor),
    fechaCita DATETIME NOT NULL,
    motivo VARCHAR (100) NULL

);

