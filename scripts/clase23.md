## Data Warehouse




**Fundamentos:**

Un **Data Warehouse** (DW o DWH), también conocido como **almacén de datos empresarial** (EDW), es un sistema utilizado para informes y análisis de datos y se considera un componente central de la inteligencia empresarial (BI). Los almacenes de datos son repositorios centrales de datos integrados de una o más fuentes dispares. Almacenan datos actuales e históricos en un solo lugar que se utilizan para crear informes. Esto es beneficioso para las empresas, ya que les permite interrogar y obtener información de sus datos y tomar decisiones.

**Tipos de Data Warehouse:**

Existen diferentes tipos de Data Warehouse, cada uno con sus propias características y aplicaciones:

* **Data Warehouse empresarial:** El tipo de Data Warehouse más común, que almacena datos de toda la empresa para su uso en análisis de BI.
[Image of Data Warehouse empresarial]
* **Data Mart:** Un subconjunto de un Data Warehouse empresarial que se centra en un área específica de negocio, como ventas, marketing o finanzas.
[Image of Data Mart]
* **Data Warehouse operativo:** Un Data Warehouse diseñado para almacenar y analizar datos de transacciones en tiempo real o casi en tiempo real.
[Image of Data Warehouse operativo]
* **Data Warehouse de nube:** Un Data Warehouse alojado en la nube, que ofrece flexibilidad y escalabilidad a las empresas.
[Image of Data Warehouse de nube]

**Componentes y tecnologías más utilizadas:**

Un Data Warehouse típico está compuesto por los siguientes componentes:

* **Extracción, transformación y carga (ETL):** El proceso de extraer datos de fuentes dispares, transformarlos en un formato compatible y cargarlos en el Data Warehouse.
* **Repositorios de datos:** Los sistemas que almacenan los datos en el Data Warehouse.
* **Herramientas de análisis:** Las herramientas que se utilizan para consultar, analizar y visualizar los datos en el Data Warehouse.
* **Metadatos:** Los datos que describen los datos en el Data Warehouse.

Las tecnologías más utilizadas en Data Warehousing incluyen:

* **Bases de datos relacionales:** Las bases de datos más comunes para almacenar datos en Data Warehouses.
* **Bases de datos NoSQL:** Las bases de datos que se utilizan para almacenar datos no estructurados o semiestructurados en Data Warehouses.
* **Herramientas ETL:** Las herramientas que se utilizan para extraer, transformar y cargar datos en Data Warehouses.
* **Herramientas de análisis de BI:** Las herramientas que se utilizan para consultar, analizar y visualizar los datos en Data Warehouses.

**Rol del Data Warehouse en BI:**

El Data Warehouse juega un papel fundamental en BI al proporcionar una plataforma centralizada para almacenar, integrar y analizar datos de toda la empresa. Esto permite a las empresas obtener una visión completa de su negocio y tomar decisiones más informadas.

## Business Intelligence

**Fundamentos:**

**Business Intelligence** (BI) es un conjunto de herramientas, tecnologías y procesos que se utilizan para recopilar, analizar y transformar datos en información útil para la toma de decisiones. BI se utiliza para mejorar el rendimiento empresarial al identificar tendencias, patrones y oportunidades en los datos.

**Componentes de BI:**

Los componentes principales de BI son:

* **Datos:** La materia prima de BI. Los datos pueden provenir de una variedad de fuentes, como sistemas transaccionales, Data Warehouses y fuentes de datos externas.
* **Infraestructura de BI:** La tecnología que admite las herramientas y procesos de BI. La infraestructura de BI puede incluir servidores, almacenamiento y software.
* **Herramientas de BI:** Las herramientas que se utilizan para recopilar, analizar y transformar datos en información. Las herramientas de BI pueden incluir herramientas de informes, análisis y visualización.
* **Procesos de BI:** Los pasos que se siguen para recopilar, analizar y transformar datos en información. Los procesos de BI pueden incluir extracción, transformación y carga (ETL), modelado de datos y análisis de datos.
* **Personas:** Las personas que utilizan BI para tomar decisiones. Las personas de BI pueden incluir analistas de negocios, gerentes y ejecutivos.

## Beneficios de BI:

BI puede proporcionar una serie de beneficios a las empresas, que incluyen:

* **Mejora en la toma de decisiones:** BI puede ayudar a las empresas a tomar decisiones más informadas al proporcionarles una visión completa de su negocio.
* **Mayor eficiencia:** BI puede ayudar a las empresas a mejorar su eficiencia al identificar áreas donde se pueden mejorar los procesos.
* **Reducción de costos:** BI puede ayudar a las empresas a reducir costos al identificar áreas donde se puede ahorrar dinero.
* **Mayor agilidad:** BI puede ayudar a las empresas a ser más ágiles al permitirles responder más rápidamente a los cambios del mercado.
* **Mayor ventaja competitiva:** BI puede ayudar a las empresas a obtener una ventaja competitiva al permitirles comprender mejor a sus clientes y mercados.


[OLAP vs OLTP](https://aws.amazon.com/es/compare/the-difference-between-olap-and-oltp/)


| Criterio | OLAP | OLTP |
|---|---|---|
| Uso | Análisis de grandes volúmenes de datos para toma de decisiones | Administración y procesamiento de transacciones en tiempo real |
| Origen de datos | Datos históricos y agregados de varios orígenes | Datos transaccionales y en tiempo real de un solo origen |
| Estructura de datos | Bases de datos multidimensionales (cubos) o relacionales | Bases de datos relacionales |
| Modelo de datos | Esquema en estrella, esquema en forma de copo de nieve u otros modelos analíticos | Modelos normalizados o desnormalizados |
| Volumen de datos | Terabytes (TB) y petabytes (PB) | Gigabytes (GB) |
| Tiempo de respuesta | Segundos o minutos | Milisegundos |
| Aplicaciones de ejemplo | Análisis de tendencias, predicción del comportamiento del cliente, identificación de la rentabilidad | Procesamiento de pagos, administración de datos de clientes, procesamiento de pedidos |

