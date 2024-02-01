USE coderhouse_gamers;


-- ORDENAMIENTO DE DATOS
-- ORDER BY

SELECT  [ * | COLS ]
    FROM SCHEMA.TABLE
WHERE
    CONDITIONS
ORDER BY COL | ...COLS
-- always ASC es el valor por default
-- EJEMPLO SOBRE CODERHOUSE DATABASE

SELECT 
    * 
FROM GAME 
WHERE 1=1
ORDER BY name DESC
-- como un slicer de lo que estaria
-- entregando
LIMIT 10;

-- ALIAS ES UNA MANERA DE RENOMBRAR DE MANERA MAS
-- AMIGABLE DE LEER CIERTAS ACCIONES
-- EJEMPLO DE COMO SE PODRIA OTORGAR MAS AMIGABLE EN "ESPAÑOL"

SELECT 
    * 
FROM 
    GAME
LIMIT 10
;

-- NO ES LO MAS FACIL DE ENTENDER POR QUE POR AHI NO ENTIENDO EL IDIOMA
-- +---------+----------------------------------+-----------------------------------+----------+----------+
-- | id_game | name                             | description                       | id_level | id_class |
-- +---------+----------------------------------+-----------------------------------+----------+----------+
-- |       1 | Forza Horizon 5                  | odio donec                        |        2 |      143 |
-- |       2 | Call of Duty: Vanguard           | morbi non                         |        6 |      153 |
-- |       3 | Shin Megami Tensei 5             | turpis integer aliquet massa id   |        3 |      243 |
-- |       4 | Marvels Guardianes de la Galaxia | lobortis sapien sapien non mi     |        4 |      245 |
-- |       5 | Age of Empires IV                |                                   |        2 |       50 |
-- |       6 | Football Manager 22              | nulla suspendisse potenti         |        8 |      236 |
-- |       7 | Football Manager 22              | mauris lacinia sapien quis libero |       11 |      173 |
-- |       8 | Blue Reflection: Second Light    | libero rutrum ac lobortis         |        2 |       18 |
-- |       9 | Darkest Dungeon II               | erat nulla                        |       11 |       90 |
-- |      10 | Voice of Cards                   | parturient montes nascetur        |        2 |      275 |
-- +---------+----------------------------------+-----------------------------------+----------+----------+
-- 10 rows in set (0.00 sec)



SELECT
        id_game AS identificacion_juego
    ,   name AS nombre_juego
    ,   description AS comentario_del_juego
FROM 
    GAME
LIMIT 10
;

-- MAS AMIGABLE AL USUARIO
-- +----------------------+----------------------------------+-----------------------------------+
-- | identificacion_juego | nombre_juego                     | comentario_del_juego              |
-- +----------------------+----------------------------------+-----------------------------------+
-- |                    1 | Forza Horizon 5                  | odio donec                        |
-- |                    2 | Call of Duty: Vanguard           | morbi non                         |
-- |                    3 | Shin Megami Tensei 5             | turpis integer aliquet massa id   |
-- |                    4 | Marvels Guardianes de la Galaxia | lobortis sapien sapien non mi     |
-- |                    5 | Age of Empires IV                |                                   |
-- |                    6 | Football Manager 22              | nulla suspendisse potenti         |
-- |                    7 | Football Manager 22              | mauris lacinia sapien quis libero |
-- |                    8 | Blue Reflection: Second Light    | libero rutrum ac lobortis         |
-- |                    9 | Darkest Dungeon II               | erat nulla                        |
-- |                   10 | Voice of Cards                   | parturient montes nascetur        |
-- +----------------------+----------------------------------+-----------------------------------+
-- 10 rows in set (0.01 sec)

-- FUNCIONES DE AGREGACION
-- LINK:    https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html
-- LINK:    https://www.freecodecamp.org/news/sql-aggregate-functions-how-to-group-by-in-mysql-and-postgresql/


-- EJEMPLO DE FUNCIONES DE AGREGACION

-- TABLE :: COMMENTARY
-- mysql> SHOW COLUMNS FROM COMMENTARY;
-- +----------------+--------------+------+-----+---------+-------+
-- | Field          | Type         | Null | Key | Default | Extra |
-- +----------------+--------------+------+-----+---------+-------+
-- | id_commentary  | int          | NO   | PRI | NULL    |       |
-- | id_game        | int          | NO   | PRI | NULL    |       |
-- | id_system_user | int          | NO   | PRI | NULL    |       |
-- | comment_date   | date         | NO   |     | NULL    |       |
-- | commentary     | varchar(200) | NO   |     | NULL    |       |
-- +----------------+--------------+------+-----+---------+-------+

--COUNT

SELECT
        id_game
    ,   COUNT(id_game) AS TOTAL_COMMENT_BY_GAME
FROM 
    COMMENTARY
-- CARACTERISTICA DE AGREGACION
GROUP BY 
    id_game
ORDER BY TOTAL_COMMENT_BY_GAME DESC

;


-- MIN
SELECT
    MIN(id_game) AS MIN_TOTAL_COMMENT_BY_GAME
FROM 
    COMMENTARY
;


-- GROUP CONCAT
SELECT 
        id_level
    ,   GROUP_CONCAT(description)
FROM CLASS
GROUP BY id_level;

-- UN POCO MAS COMPLICADO PERO ESTA BUENO VERLO COMO ALGO EXTRA
-- UNA COSA MUY LOCA QUE ME PIDIERON EN EL TRABAJO

SELECT
    id_level,
    JSON_OBJECTAGG(id_level, CAST(DESCRIPTION_CONCAT AS CHAR(100)))
FROM
    ( -- ESTO ES UNA SUBQUERY, QUE LO VEREMOS MAS ADELANTE
        SELECT
            id_level,
            JSON_ARRAYAGG(description) AS DESCRIPTION_CONCAT
        FROM
            CLASS
        GROUP BY
            id_level
    ) AS DATA
GROUP BY
    id_level
;

--  EJEMPLOS Y RESULTADOS

SELECT
    *
FROM
    commentary
ORDER BY
    id_system_user desc;



SELECT
    *
FROM
    commentary
ORDER BY
    id_system_user
LIMIT
    3;

SELECT
    COUNT(id_system_user) AS comments,
    id_system_user
FROM
    commentary
GROUP BY
    id_system_user;

SELECT
    COUNT(id_system_user) AS comments,
    id_system_user
FROM
    commentary
GROUP BY
    id_system_user
HAVING
    comments > 2;


-- JOINS (son concatenaciones de tablas del tipo matricial y coincidencia de col)




