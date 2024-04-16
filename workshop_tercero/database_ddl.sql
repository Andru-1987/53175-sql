DROP DATABASE IF EXISTS mozo_atr;

CREATE DATABASE mozo_atr;

USE mozo_atr;

-- TABLAS DIMENSIONALES
-- Tabla CLIENTE
CREATE TABLE
    CLIENTE (
        IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
        NOMBRE VARCHAR(100) DEFAULT 'USUARIO_UNKNOW',
        TELEFONO VARCHAR(20) NOT NULL,
        CORREO VARCHAR(100) UNIQUE NOT NULL,
        FECHA_ALTA DATETIME DEFAULT (CURRENT_TIMESTAMP) NOT NULL,
        STATUS      BOOLEAN DEFAULT TRUE NOT NULL,
    );


CREATE TABLE CLIENTE_TYPE(
    IDCLIENTE INT PRIMARY KEY,
    TYPO ENUM("PREMIUM","LOCAL","VIP")
);


-- Tabla DUEÑO
CREATE TABLE
    DUENO (
        IDDUENO INT PRIMARY KEY AUTO_INCREMENT,
        NOMBRE VARCHAR(100),
        CORREO VARCHAR(100),
        TELEFONO VARCHAR(20)
    );

-- Tabla TIPORESERVA
CREATE TABLE
    TIPORESERVA (
        IDTIPORESERVA INT PRIMARY KEY AUTO_INCREMENT,
        TIPO VARCHAR(50)
    );

-- TABLAS CON FKS
-- Tabla EMPLEADO
CREATE TABLE
    EMPLEADO (
        IDEMPLEADO INT PRIMARY KEY AUTO_INCREMENT,
        NOMBRE VARCHAR(100),
        TELEFONO VARCHAR(20),
        CORREO VARCHAR(100),
        IDRESTAURANTE INT
    );

-- Tabla RESTAURANTE
CREATE TABLE
    RESTAURANTE (
        IDRESTAURANTE INT PRIMARY KEY AUTO_INCREMENT,
        NOMBRE VARCHAR(100),
        DIRECCION VARCHAR(255),
        TELEFONO VARCHAR(20),
        IDDUENO INT
    );

-- Tabla MESA
CREATE TABLE
    MESA (
        IDMESA INT PRIMARY KEY AUTO_INCREMENT,
        IDRESTAURANTE INT,
        CAPACIDAD INT,
        DISPONIBLE BOOLEAN
    );

-- TABLA HECHO
-- Tabla RESERVA
CREATE TABLE
    RESERVA (
        IDRESERVA INT PRIMARY KEY AUTO_INCREMENT,
        IDCLIENTE INT,
        IDMESA INT,
        IDEMPLEADO INT,
        IDTIPORESERVA INT,
        FECHA DATETIME,
        CANCELACION DATETIME DEFAULT NULL,
        HORARIO_RESERVA DATETIME
    );

-- FOREIGN KEYS DEFINITION
-- RESTAURANTE
ALTER TABLE RESTAURANTE ADD CONSTRAINT FK_REST_DUENO FOREIGN KEY (IDDUENO) REFERENCES DUENO (IDDUENO);

-- EMPLEADO
ALTER TABLE EMPLEADO ADD CONSTRAINT FK_EMP_RESTAURANTE FOREIGN KEY (IDRESTAURANTE) REFERENCES RESTAURANTE (IDRESTAURANTE);

-- MESA
ALTER TABLE MESA ADD CONSTRAINT FK_MESA_RESTAURANTE FOREIGN KEY (IDRESTAURANTE) REFERENCES RESTAURANTE (IDRESTAURANTE);

-- RESERVAS

ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_MESA FOREIGN KEY (IDMESA) REFERENCES MESA (IDMESA);
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_EMPLEADO FOREIGN KEY (IDEMPLEADO) REFERENCES EMPLEADO (IDEMPLEADO);
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_TIPORESERVA FOREIGN KEY (IDTIPORESERVA) REFERENCES TIPORESERVA (IDTIPORESERVA);
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_CLIENTE FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE (IDCLIENTE);

-- CLIENTE Y TIPO
ALTER TABLE CLIENTE_TYPE ADD CONSTRAINT FK_CLIENTE_TYPO FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE_TYPE(IDCLIENTE);
