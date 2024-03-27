## Proyecto CoderHouse
#### Anderson  Ocana

### Problema:

Nuestro equipo de desarrollo está trabajando en un sistema de gestión de reservas para restaurantes, y nos enfrentamos a la necesidad de diseñar una base de datos eficiente que pueda manejar todas las operaciones relacionadas con las reservas de manera óptima.

### Descripción del Problema:

1. **Gestión de Clientes y Empleados**: Necesitamos una base de datos que nos permita registrar la información de los clientes que realizan reservas, así como de los empleados involucrados en el proceso de reserva, como los camareros o encargados de atención al cliente.

2. **Gestión de Tipos de Reserva**: Es importante poder clasificar las reservas según su tipo, ya sea una reserva estándar, una reserva para eventos especiales o reservas de grupos grandes. Esto nos ayudará a organizar mejor el flujo de trabajo y adaptar nuestros servicios según las necesidades del cliente.

3. **Gestión de Mesas y Disponibilidad**: La base de datos debe permitirnos registrar la disponibilidad de mesas en cada restaurante, así como gestionar su capacidad y estado (ocupado o disponible). Esto es fundamental para garantizar una asignación eficiente de mesas y evitar conflictos de reservas.

4. **Registro de Reservas**: Necesitamos un sistema que pueda registrar de manera detallada cada reserva realizada, incluyendo la fecha y hora de la reserva, el cliente que la realizó, la mesa reservada, el empleado que atendió la reserva y el tipo de reserva.

### Objetivo:

Diseñar e implementar una base de datos relacional que satisfaga todas las necesidades de gestión de reservas para nuestro sistema de gestión de restaurantes. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con las reservas.

```

+-------------+
| TIPORESERVA |
+-------------+
| IDTIPORES PK|
|    TIPO     |
+-------------+
        |
+-------------------+       +-------------+       +-----------------+      
|   RESERVA         |       |   CLIENTE   |       |  EMPLEADO       |      
+-------------------+       +-------------+       +-----------------+      
| IDRESERVA PK      |       | IDCLIENTE PK|       | IDEMPLEADO PK   |     
| IDCLIENTE FK      |<------|             |<------|                 |      
| IDMESA   FK       |<------|             |       | IDRESTAURANTE FK|   
| IDEMPLEADO FK     |<------|  STATUS     |       |                 |      
| IDTIPORESERVA FK  |<------| FECHA_ALTA  |       |                 |      
| FECHA             |       |   NOMBRE    |       |   NOMBRE        |      
| CANCELACION       |       |  TELEFONO   |       |  TELEFONO       |      
+-------------------+       |   CORREO    |       |   CORREO        |
                            +-------------+       +-------------    +
                                     |                   |
                                     |                   |
+-------------+       +-------------    +       +-------------      +       +-------------      +
|   DUENO     |       | RESTAURANTE     |       |    MESA           |       | RESERVA           |
+-------------+       +-------------    +       +-------------      +       +-------------      +
| IDDUENO PK  |       | IDRESTAURANTE PK|       | IDMESA PK         |       | IDRESERVA PK      |
|             |-----> | IDDUENO FK      |<------| IDRESTAURANTE FK  |-----> | IDCLIENTE FK      |
| NOMBRE      |       | NOMBRE          |       |   CAPACIDAD       |       | IDMESA FK         |
| CORREO      |       | DIRECCION       |       | DISPONIBLE        |       | IDEMPLEADO FK     |
| TELEFONO    |       | TELEFONO        |       +-------------      +       | IDTIPORESERVA FK  |
+-------------+       |                 |                                   | FECHA             |
                       +-------------   +                                   | CANCELACION       |
                                                                            +-------------      +

```


## Reserva 
Descripcion de los tipos de datos

---

| Tabla         | Columna           | Tipo de Datos                         |
| ------------- | ----------------- |                                  ---: |
| RESERVA       | IDRESERVA         | INT                                   |
|               | IDCLIENTE         | INT                                   |
|               | IDMESA            | INT                                   |
|               | IDEMPLEADO        | INT                                   |
|               | IDTIPORESERVA     | INT                                   |
|               | FECHA             | DATETIME                              |
|               | CANCELACION       | DATETIME                              |
| CLIENTE       | IDCLIENTE         | INT                                   |
|               | NOMBRE            | VARCHAR(100) DEFAULT 'USUARIO_UNKNOW' |
|               | TELEFONO          | VARCHAR(20) NOT NULL                  |
|               | CORREO            | VARCHAR(100) UNIQUE NOT NULL          |
| EMPLEADO      | IDEMPLEADO        | INT                                   |
|               | NOMBRE            | VARCHAR(100)                          |
|               | TELEFONO          | VARCHAR(20)                           |
|               | CORREO            | VARCHAR(100)                          |
|               | IDRESTAURANTE     | INT                                   |
| DUENO         | IDDUENO           | INT                                   |
|               | NOMBRE            | VARCHAR(100)                          |
|               | CORREO            | VARCHAR(100)                          |
|               | TELEFONO          | VARCHAR(20)                           |
| TIPORESERVA   | IDTIPORESERVA     | INT                                   |
|               | TIPO              | VARCHAR(50)                           |
| RESTAURANTE   | IDRESTAURANTE     | INT                                   |
|               | NOMBRE            | VARCHAR(100)                          |
|               | DIRECCION         | VARCHAR(255)                          |
|               | TELEFONO          | VARCHAR(20)                           |
|               | IDDUENO           | INT                                   |
| MESA          | IDMESA            | INT                                   |
|               | IDRESTAURANTE     | INT                                   |
|               | CAPACIDAD         | INT                                   |
|               | DISPONIBLE        | BOOLEAN                               |


