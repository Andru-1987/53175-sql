-- CREACION BASE DE UNA APP PARA RESERVAS UN RESTAURANT USANDO DISTINTOS

/*

## Descripción de la Base de Datos - Gestión de Reservas en Restaurantes

Esta base de datos está diseñada para gestionar reservas en restaurantes, así como la información relacionada con clientes, empleados, tipos de reserva y restaurantes mismos. A continuación se detallan los elementos principales de la base de datos:

### Tablas:

1. **CLIENTE**:
   - Almacena información sobre los clientes que realizan reservas.
   - Atributos: IDCLIENTE, NOMBRE, TELEFONO, CORREO.

2. **EMPLEADO**:
   - Contiene información sobre los empleados involucrados en el proceso de reservas.
   - Atributos: IDEMPLEADO, NOMBRE, TELEFONO, CORREO, IDRESTAURANTE.

3. **DUEÑO**:
   - Guarda datos sobre los dueños de los restaurantes (no se utiliza explícitamente en el proceso de reservas).

4. **TIPORESERVA**:
   - Define diferentes tipos de reserva para clasificarlas según su propósito o requisitos específicos.
   - Atributos: IDTIPORESERVA, TIPO.

5. **RESTAURANTE**:
   - Almacena información sobre los restaurantes disponibles.
   - Atributos: IDRESTAURANTE, NOMBRE, DIRECCION, TELEFONO.

6. **MESA**:
   - Contiene información sobre las mesas disponibles en cada restaurante.
   - Atributos: IDMESA, IDRESTAURANTE, CAPACIDAD, DISPONIBLE.

7. **RESERVA**:
   - Registra las reservas realizadas por los clientes.
   - Atributos: IDRESERVA, IDCLIENTE, IDMESA, IDEMPLEADO, IDTIPORESERVA, FECHA.

### Problemática Resuelta:

Esta base de datos permite gestionar eficientemente el proceso de reserva en restaurantes, desde la información de los clientes y empleados hasta la disponibilidad de mesas y el registro de reservas. Algunos aspectos que aborda incluyen:

- Registro de clientes y empleados involucrados en el proceso de reserva.
- Clasificación de las reservas según su tipo.
- Gestión de la disponibilidad de mesas en cada restaurante.
- Registro detallado de las reservas realizadas, incluyendo la fecha, cliente, mesa, empleado y tipo de reserva.

En resumen, esta base de datos proporciona una estructura para organizar y gestionar eficientemente las operaciones de reserva en restaurantes, lo que contribuye a mejorar el servicio ofrecido a los clientes y optimizar las operaciones del restaurante.
*/

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
