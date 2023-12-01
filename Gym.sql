CREATE DATABASE IF NOT EXISTS GYM;
USE GYM;

CREATE TABLE IF NOT EXISTS clase(
    clase_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precio DECIMAL(9,2) NOT NULL,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuario(
    /*cliente_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,*/
    dni VARCHAR(9) NOT NULL UNIQUE PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    clave VARCHAR(255)NOT NULL,
    pagado BOOLEAN NOT NULL,
    perfil VARCHAR(100) NOT NULL,
    fecha DATE
);

INSERT INTO `cliente` (`dni`, `nombre`, `clave`, `pagado`,`perfil`,`fecha`) VALUES ('12341332Y','aurelio','a97c2173ce08b276ec86a2ed9e4bd2e8','0', '2022-03-01');
INSERT INTO `clase` (`nombre`,`precio`) VALUES ('boxeo','2,1');
INSERT INTO `clase` (`nombre`,`precio`) VALUES ('fitnest','2,3');