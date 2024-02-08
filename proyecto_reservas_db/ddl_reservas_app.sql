-- CREACION BASE DE UNA APP PARA RESERVAS UN RESTAURANT USANDO DISTINTOS
-- MEDIOS DE RESERVAS

/*

DER SIMPLIFICADO

+------------------+        +-----------------------+        +------------------+
|      CLIENTE     |        |       RESERVA         |        |     RESTAURANTE  |
+------------------+        +-----------------------+        +------------------+
| idCliente (PK)   |<>-----o| idReserva (PK)        |o-------| idRestaurante(PK)|
| nombre           |        | idCliente (FK)        |        | nombre           |
| telefono         |        | idMesa (FK)           |        | direccion        |
| correo           |        | idEmpleado (FK)       |        | telefono         |
+------------------+        | idTipoReserva (FK)    |        +------------------+
                            | fecha                 |
                            | cancelcion            |                  |
                            +-----------------------+                  |
                                    |                                  |
                                    |                                  |
                                    v                                  v
+------------------+        +------------------+             +-------------------+
|     Empleado     |        |      Mesa        |             |     Dueño         |
+------------------+        +------------------+             +-------------------+
| idEmpleado (PK)  |        | idMesa (PK)      |             | idDueño (PK)      |
| nombre           |        | idRestaurante(FK)|             | nombre            |
| telefono         |        | capacidad        |             | correo            |
| correo           |        | disponible       |             | telefono          |
| idRestaurante(FK)|        +------------------+             +-------------------+
+------------------+                  |
                             +-------------------+
                             |   TipoReserva     |
                             +-------------------+
                             | idTipoReserva(PK) |
                             | tipo              |
                             +-------------------+
*/

-- Tabla CLIENTE
CREATE TABLE CLIENTE (
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(100) DEFAULT 'USUARIO_UNKNOW',
    TELEFONO VARCHAR(20) NOT NULL,
    CORREO VARCHAR(100) UNIQUE NOT NULL
);

-- Tabla EMPLEADO
CREATE TABLE EMPLEADO (
    IDEMPLEADO INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(100),
    TELEFONO VARCHAR(20),
    CORREO VARCHAR(100),
    IDRESTAURANTE INT,
    FOREIGN KEY (IDRESTAURANTE) REFERENCES RESTAURANTE(IDRESTAURANTE)
);

-- Tabla DUEÑO
CREATE TABLE DUEÑO (
    IDDUEÑO INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(100),
    CORREO VARCHAR(100),
    TELEFONO VARCHAR(20)
);

-- Tabla TIPORESERVA
CREATE TABLE TIPORESERVA (
    IDTIPORESERVA INT PRIMARY KEY AUTO_INCREMENT,
    TIPO VARCHAR(50)
);

-- Tabla RESTAURANTE
CREATE TABLE RESTAURANTE (
    IDRESTAURANTE INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(100),
    DIRECCION VARCHAR(255),
    TELEFONO VARCHAR(20)
);

-- Tabla MESA
CREATE TABLE MESA (
    IDMESA INT PRIMARY KEY AUTO_INCREMENT,
    IDRESTAURANTE INT,
    CAPACIDAD INT,
    DISPONIBLE BOOLEAN,
    FOREIGN KEY (IDRESTAURANTE) REFERENCES RESTAURANTE(IDRESTAURANTE)
);

-- Tabla RESERVA
CREATE TABLE RESERVA (
    IDRESERVA INT PRIMARY KEY AUTO_INCREMENT,
    IDCLIENTE INT,
    IDMESA INT,
    IDEMPLEADO INT,
    IDTIPORESERVA INT,
    FECHA DATETIME,
    FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE(IDCLIENTE),
    FOREIGN KEY (IDMESA) REFERENCES MESA(IDMESA),
    FOREIGN KEY (IDEMPLEADO) REFERENCES EMPLEADO(IDEMPLEADO),
    FOREIGN KEY (IDTIPORESERVA) REFERENCES TIPORESERVA(IDTIPORESERVA)
);
