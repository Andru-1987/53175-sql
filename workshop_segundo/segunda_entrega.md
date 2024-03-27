## Segunda PreEntrga de SQL
* Listado de Vistas más una descripción detallada, su objetivo, y qué tablas las componen.
* Listado de Funciones que incluyan una descripción detallada, el objetivo para la cual fueron creadas y qué datos o tablas manipulan y/o son implementadas.
* Listado de Stored Procedures con una descripción detallada, qué objetivo o beneficio aportan al proyecto, y las tablas que lo componen y/o tablas con las que interactúa
* Listado de Triggers

---
### Formato de Entrega 
*   _Repositorio en GitHub o Google Drive Link_

*   Un archivo .sql que contenga:
    - Script de inserción de datos en las bases.
    - Si se insertan datos mediante importación, agregar el paso a paso de éste en el DOC PDF más los archivos con el contenido a importar, en el formato que corresponda.
    - Script de creación de Vistas, Funciones, Stored Procedures y Triggers.

    - Documento PDF con el nombre “Entrega2 + Apellido” ->> Recomendacion para presentaciones futuras : usar [Canva](https://www.canva.com/) o  [Visme](https://www.visme.co/)
        - _Alternativa muy rara ->> [Dektopus](https://www.decktopus.com/)_


### Documentacion de Vistas
### Vista: ReservasPorFecha

**Descripción:** Esta vista muestra estadísticas sobre las reservas realizadas en diferentes fechas, como el número total de reservas por día, por semana o por mes.

**Columnas:**

* **Fecha:** Fecha de la reserva (formato YYYY-MM-DD)
* **TotalReservas:** Número total de reservas realizadas en la fecha indicada

**Ejemplo de consulta:**

```sql
SELECT * FROM ReservasPorFecha
WHERE Fecha BETWEEN '2010-12-01' AND '2023-12-31'
ORDER BY Fecha ASC;
```

### Vista: ReservasPorMesa

**Descripción:** Esta vista muestra la cantidad de reservas realizadas para cada mesa, así como la capacidad total de la mesa.

**Columnas:**

* **IDMesa:** Identificador único de la mesa
* **Capacidad:** Número de personas que la mesa puede acomodar
* **TotalReservas:** Número total de reservas realizadas para la mesa

**Ejemplo de consulta:**

```sql
SELECT * FROM ReservasPorMesa
ORDER BY TotalReservas DESC;
```

### Vista: CancelacionesPorTipoReserva

**Descripción:** Esta vista muestra la cantidad de cancelaciones para cada tipo de reserva.

**Columnas:**

* **Tipo:** Tipo de reserva (ej. "Normal", "Grupal", etc.)
* **TotalCancelaciones:** Número total de cancelaciones para el tipo de reserva

**Ejemplo de consulta:**

```sql
SELECT * FROM CancelacionesPorTipoReserva
ORDER BY TotalCancelaciones DESC;
```

## Documentación de Funciones 

### Función: mesa_cancelada

**Descripción:** Esta función verifica si una mesa está cancelada para una reserva.

**Parámetros:**

* **mesa_id:** Identificador único de la mesa

**Retorno:**

* **TRUE** si la mesa está cancelada para alguna reserva, **FALSE** en caso contrario

**Ejemplo de uso:**

```sql
SELECT mesa_cancelada(10);
```

**Nota:** La función solo verifica si la mesa está cancelada para alguna reserva. No indica si la mesa está disponible para una nueva reserva en este momento.

### Función: contar_reservas_cliente

**Descripción:** Esta función cuenta la cantidad de reservas realizadas por un cliente en un intervalo de tiempo.

**Parámetros:**

* **cliente_id:** Identificador único del cliente
* **fecha_inicio:** Fecha de inicio del intervalo (formato YYYY-MM-DD)
* **fecha_fin:** Fecha de fin del intervalo (formato YYYY-MM-DD)

**Retorno:**

* Número total de reservas realizadas por el cliente en el intervalo de tiempo especificado

**Ejemplo de uso:**

```sql
SELECT contar_reservas_cliente(5, '2023-12-01', '2023-12-31');
```

**Nota:** La función no toma en cuenta las cancelaciones de reservas.

### Función: cantidad_mesas_por_restaurante

**Descripción:** Esta función devuelve la cantidad de mesas que tiene un restaurante.

**Parámetros:**

* **restaurante_id:** Identificador único del restaurante

**Retorno:**

* Número total de mesas del restaurante

**Ejemplo de uso:**

```sql
SELECT cantidad_mesas_por_restaurante(2);
```

## Documentación de Triggers 

### Trigger: after_insert_trigger

**Descripción:** Este trigger registra la inserción de un nuevo cliente en la tabla LOG_CAMBIOS.

**Detalles:**

* **Tabla afectada:** CLIENTE
* **Acción:** INSERT
* **Información registrada:** Fecha, ID del cliente, Usuario

**Ejemplo:**

* Se inserta un nuevo cliente.
* El trigger registra la acción en la tabla LOG_CAMBIOS con los detalles correspondientes.

### Trigger: after_update_cancelacion_trigger

**Descripción:** Este trigger registra la cancelación de una reserva en la tabla LOG_CAMBIOS.

**Detalles:**

* **Tabla afectada:** RESERVA
* **Acción:** CANCELACION
* **Información registrada:** Fecha, ID del cliente (si se conoce), Usuario

**Ejemplo:**

* Se actualiza una reserva para indicar su cancelación.
* Si la cancelación no estaba presente antes, el trigger registra la acción en la tabla LOG_CAMBIOS.

### Trigger: before_insert_cliente_trigger

**Descripción:** Este trigger verifica si el correo electrónico de un nuevo cliente ya está en uso.

**Detalles:**

* **Tabla afectada:** CLIENTE
* **Acción:** INSERT
* **Validación:** Correo electrónico único

**Ejemplo:**

* Se intenta insertar un nuevo cliente con un correo electrónico ya registrado.
* El trigger genera un error y la inserción no se realiza.

### Trigger: before_insert_reserva_trigger

**Descripción:** Este trigger verifica si un cliente ya tiene una reserva en la misma hora y mesa.

**Detalles:**

* **Tabla afectada:** RESERVA
* **Acción:** INSERT
* **Validación:** No se permiten reservas duplicadas en la misma hora y mesa para un mismo cliente.

**Ejemplo:**

* Se intenta reservar una mesa para un cliente que ya tiene una reserva en la misma hora y mesa.
* El trigger genera un error y la reserva no se realiza.


## Documentación de Procedimientos Almacenados

### Procedimiento: actualizar_reserva_cancelada_por_email

**Descripción:** Este procedimiento actualiza una reserva cancelada para un cliente a partir de su correo electrónico.

**Parámetros:**

* **p_email:** Correo electrónico del cliente

**Retorno:**

* Mensaje de éxito o error

**Ejemplo de uso:**

```sql
CALL actualizar_reserva_cancelada_por_email('ejemplo@correo.com');
```

### Procedimiento: actualizar_tipo_reserva_por_email

**Descripción:** Este procedimiento actualiza el tipo de reserva de la última reserva realizada por un cliente a partir de su correo electrónico.

**Parámetros:**

* **p_email:** Correo electrónico del cliente
* **p_nuevo_tipo:** Nuevo tipo de reserva

**Retorno:**

* Mensaje de éxito o error

**Ejemplo de uso:**

```sql
CALL actualizar_tipo_reserva_por_email('ejemplo@correo.com', 'Reserva de Grupo');
```

### Procedimiento: crear_empleado

**Descripción:** Este procedimiento crea un nuevo empleado en la base de datos.

**Parámetros:**

* **p_nombre:** Nombre del empleado
* **p_telefono:** Teléfono del empleado
* **p_correo:** Correo electrónico del empleado
* **p_id_restaurante:** Identificador del restaurante al que pertenece el empleado

**Retorno:**

* Mensaje de éxito o error

**Ejemplo de uso:**

```sql
CALL crear_empleado('Juan Pérez', '123456789', 'juan.perez@ejemplo.com', 1);
```


