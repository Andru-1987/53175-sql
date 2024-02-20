-- TIPOS DE TABLA
-- FACT TABLES
-- TRANSAC TABLES
-- DIMENSION TABLES

-- FOREIGN KEY
-- CANDIDATE AND CONCATENATE KEYS


**Temario: Tablas en Bases de Datos**

**1. Tipos de Tabla:**
   - Tablas Temporales
   - Tablas Permanentes
   - Tablas Virtuales

**2. Fact Tables (Tablas de Hechos):**
   - Definición
   - Características
   - Ejemplos de Uso
   - Relación con el Modelo de Estrella y Copo de Nieve

**3. Transac Tables (Tablas de Transacciones):**
   - Definición
   - Propósito
   - Ejemplos de Uso
   - Relación con el Seguimiento de Transacciones y Auditorías

**4. Dimension Tables (Tablas de Dimensiones):**
   - Definición
   - Características
   - Ejemplos de Dimensiones Comunes (Tiempo, Producto, Ubicación)
   - Relación con el Modelo de Estrella y Copo de Nieve

**5. Foreign Key (Clave Externa):**
   - Definición
   - Propósito
   - Ejemplos de Implementación
   - Relación con la Integridad Referencial

**6. Candidate and Concatenate Keys (Claves Candidatas y Concatenadas):**
   - Definición de Clave Candidata
   - Definición de Clave Concatenada
   - Diferencias entre Claves Candidatas y Concatenadas
   - Ejemplos de Uso

---

**Explicación de los Puntos:**

**Tipos de Tabla:**
Las tablas en bases de datos pueden clasificarse en temporales, que se crean y eliminan durante la ejecución de un programa o proceso; permanentes, que persisten en la base de datos incluso después de cerrar la conexión; y virtuales, que son el resultado de una consulta o cálculo y no se almacenan físicamente en la base de datos.

**Fact Tables (Tablas de Hechos):**
Son tablas que almacenan datos cuantificables y específicos que se pueden medir, generalmente en el contexto de un proceso de negocio o un evento. Son centrales en un modelo de datos dimensional, como el modelo de estrella y copo de nieve, y contienen métricas clave que se analizan en conjunto con las dimensiones.

**Transac Tables (Tablas de Transacciones):**
Estas tablas registran eventos individuales o transacciones que ocurren en un sistema. Son fundamentales para el seguimiento de cambios y la auditoría, ya que contienen información detallada sobre quién hizo qué y cuándo en la base de datos.

**Dimension Tables (Tablas de Dimensiones):**
Son tablas que contienen descripciones textuales o contextuales de los datos en las fact tables. Por lo general, contienen atributos que proporcionan contexto a las métricas almacenadas en las fact tables y son utilizadas para filtrar, agrupar o agregar datos.

**Foreign Key (Clave Externa):**
Una foreign key es un campo (o campos) en una tabla que hace referencia a la primary key de otra tabla. Se utiliza para establecer una relación entre dos tablas y garantizar la integridad referencial en la base de datos. La foreign key garantiza que los valores en la columna referenciada existan en la tabla principal.

**Candidate and Concatenate Keys (Claves Candidatas y Concatenadas):**
Una clave candidata es un conjunto de uno o más campos que pueden ser claves primarias potenciales para una tabla. Una clave concatenada es una clave primaria que consta de la combinación de dos o más campos. Las claves candidatas son candidatas a ser claves primarias, mientras que las claves concatenadas son claves primarias compuestas.


-- 

Ejemplo de tablas dimensionales 
Ejemplo de tablas de hechos

Identificar en el modelo de una applicacion de reservas las tablas que serían de hecho y las que son dimensionales: 

-- Presentar el modelo en el respositorio
-- LINK: https://github.com/Andru-1987/53175-sql/blob/main/proyecto_reservas_db/ddl_reservas_app.sql

-- Dar informacion sobre la relacion cardinal de RESTAURANTE -- DUEÑO

-- Data extra: 
La integridad relacional en MySQL se refiere a la garantía de que las relaciones entre las tablas en una base de datos se mantienen consistentes y que no se producen acciones que puedan comprometer la integridad de los datos. MySQL proporciona varias herramientas y mecanismos para implementar y mantener la integridad relacional en una base de datos:

    Constraints (Restricciones): MySQL permite definir diferentes tipos de restricciones para mantener la integridad de los datos, incluyendo:
        PRIMARY KEY: Define un campo o conjunto de campos como clave primaria, asegurando que los valores sean únicos e indexados.
        FOREIGN KEY: Establece una relación entre dos tablas, garantizando que los valores en la columna referenciada existan en la tabla principal.
        UNIQUE: Asegura que los valores en una columna o conjunto de columnas sean únicos.
        NOT NULL: Evita que los valores en una columna sean nulos, asegurando que siempre contengan datos.

    Triggers (Disparadores): Los triggers son bloques de código SQL que se ejecutan automáticamente cuando ocurren ciertos eventos, como inserciones, actualizaciones o eliminaciones en una tabla. Se pueden utilizar para realizar validaciones adicionales o acciones específicas para mantener la integridad de los datos.

    Transactions (Transacciones): MySQL soporta transacciones, que permiten agrupar una serie de operaciones SQL en una unidad lógica de trabajo. Las transacciones garantizan la atomicidad, consistencia, aislamiento y durabilidad (propiedades ACID), lo que ayuda a mantener la integridad de los datos durante operaciones complejas que afectan a múltiples tablas.

    Foreign Key Constraints (Restricciones de Clave Externa): MySQL permite definir restricciones de clave externa utilizando la sintaxis FOREIGN KEY, lo que garantiza que los valores en una columna de una tabla (clave externa) hagan referencia a los valores existentes en otra tabla (clave primaria).

    Índices (Indexes): Los índices en MySQL pueden mejorar el rendimiento de las consultas, pero también pueden utilizarse para garantizar la integridad de los datos al imponer restricciones únicas o de clave primaria en una tabla.