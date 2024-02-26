-- LINK  : https://www.prisma.io/dataguide/mysql/inserting-and-modifying-data/inserting-and-deleting-data
-- INFORMACION OFICIAL : 
-- INSERT >> https://dev.mysql.com/doc/refman/8.0/en/insert.html
-- UPDATE >> https://dev.mysql.com/doc/refman/8.0/en/update.html
-- DELETE >> https://dev.mysql.com/doc/refman/8.0/en/delete.html


1. **SELECT**: 
Si bien esta dentro de la definicion de DML >> es considerado mas como parte del DQL (Data query language)

   ```sql
   SELECT * FROM empleados WHERE departamento = 'Ventas';
   ```

2. **INSERT**:
   ```sql
   INSERT INTO clientes (nombre, correo) VALUES ('Juan Pérez', 'juan@example.com');
   ```

3. **UPDATE**:
   ```sql
   UPDATE productos SET precio = 25.99 WHERE id = 123;
   ```

4. **DELETE**:
   ```sql
   DELETE FROM pedidos WHERE estado = 'cancelado';
   ```

5. **MERGE**:  
--  Tambien es parte del sublenguaje, sin embargo no es de uso comun en MySQL 
--  UPSERT es algo comunmente usado en PosgreSQL 
--  ON UPDATE >> https://www.mysqltutorial.org/mysql-basics/mysql-insert-or-update-on-duplicate-key-update/
   MySQL no tiene un comando MERGE incorporado, pero se puede lograr utilizando combinaciones de INSERT y UPDATE.

   Ejemplo de combinación de INSERT y UPDATE para MySQL:
   ```sql
   INSERT INTO ventas (producto_id, cantidad)
   SELECT source.producto_id, source.cantidad
   FROM nuevos_datos AS source
   LEFT JOIN ventas AS target 
    ON source.producto_id = target.producto_id
    ON DUPLICATE KEY UPDATE cantidad = source.cantidad;
   ```
   En este ejemplo, los nuevos datos se insertan en la tabla "ventas", y si hay una clave duplicada (en este caso, "producto_id"), se actualiza la cantidad en lugar de insertar un nuevo registro.

Estos son los mismos ejemplos adaptados para MySQL, que es una implementación común de SQL en entornos de bases de datos.




