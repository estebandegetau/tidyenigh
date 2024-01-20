# Document data for 2022 ENIGH

#### enigh_documentation #######################################################

#' @title Documentación de la ENIGH
#'
#' @description
#' Contiene una breve descripción de los distintos conjuntos de datos incluidos
#' en la ENIGH 2022.
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'            2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
"enigh_documentation_2022"

#### viviendas #################################################################

#' @title Características de las viviendas que habitan los integrantes del hogar
#'
#' @description
#' Contiene las características de las viviendas que se captaron en la sección I del
#' CUESTIONARIO DE HOGARES Y VIVIENDA, el recuento de los residentes y los hogares
#' de la vivienda, la ubicación y el diseño muestral correspondiente a esta,
#' así como el factor de expansión.
#'
#'
#' @details
#' Para la ENIGH 2012 y 2014 se separó la información referente a las viviendas
#' (antes contenida en la tabla HOGARES) en la tabla VIVIENDAS, de tal manera
#' que ahora la tabla HOGARES solo contiene características relativas al hogar.
#' Esta modificación corresponde a la incorporación de un factor de expansión
#' exclusivo para la vivienda dentro del diseño muestral. También se reestructuraron
#' las tablas correspondientes al gasto para respetar el nivel al que está asociada
#' la información; los gastos asociados al hogar, tanto monetarios como no monetarios,
#' se integraron en la tabla GASTOSHOGAR y los correspondientes a las personas se
#' integraron en la tabla GASTOSPERSONA. Esta modificación facilita la explotación
#' de la información referente al gasto, al encontrarse esta únicamente en dos tablas.
#'
#' * **Llave primaria**: `folioviv`.
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'             2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [hogares_2022]
#'
"viviendas_2022"

#### hogares ###################################################################

#' @title Características de los hogares que habitan los integrantes del hogar
#'
#' @description
#' Se integra con información sobre el acceso a la alimentación de los
#' integrantes del hogar, el equipamiento del hogar, el tiempo de traslado al
#' hospital, los hábitos de consumo del hogar, las estimaciones de gasto en
#' alimentos y transporte, la información sobre los huéspedes y los
#' trabajadores domésticos. Esta se capta en las secciones II, IV, V y VI
#' del CUESTIONARIO DE HOGARES Y VIVIENDA y en el CUADERNILLO DE GASTOS DIARIOS.
#'
#' @details
#' Para la ENIGH 2012 y 2014 se separó la información referente a las viviendas
#' (antes contenida en la tabla HOGARES) en la tabla VIVIENDAS, de tal manera
#' que ahora la tabla HOGARES solo contiene características relativas al hogar.
#' Esta modificación corresponde a la incorporación de un factor de expansión
#' exclusivo para la vivienda dentro del diseño muestral. También se reestructuraron
#' las tablas correspondientes al gasto para respetar el nivel al que está asociada
#' la información; los gastos asociados al hogar, tanto monetarios como no monetarios,
#' se integraron en la tabla GASTOSHOGAR y los correspondientes a las personas se
#' integraron en la tabla GASTOSPERSONA. Esta modificación facilita la explotación
#' de la información referente al gasto, al encontrarse esta únicamente en dos tablas.
#'
#' * **Llave primaria**: `foliohog`
#' * **Llave foránea**: `folioviv`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'             2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [concentradohogar_2022], [poblacion_2022], [gastotarjetas_2022],
#'          [gastoshogar_2022], [erogaciones_2022]
#'
"hogares_2022"

#### poblacion #################################################################

#' @title Características sociodemográficas de los integrantes del hogar
#'
#' @description
#' Identifica las características sociodemográficas de los integrantes del
#' hogar; y el acceso a las instituciones de salud que tienen los integrantes
#' del hogar.
#'
#' @details
#' Características sociodemográficas y ocupacionales de los integrantes del
#' hogar. Esta información se capta en la sección III del CUESTIONARIO DE
#' HOGARES Y VIVIENDA, en los apartados 1.1 y 6.2 y secciones VIII, IX y X
#' del CUESTIONARIO PARA PERSONAS DE 12 O MÁS AÑOS y en la
#' sección II del CUESTIONARIO PARA PERSONAS MENORES DE 12 AÑOS.
#'
#' * **Llave primaria**: `numren`
#' * **Llave foránea**: `folioviv`, `foliohog`
#'
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'             2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [hogares_2022], [ingresos_2022], [trabajos_2022],
#'          [gastospersona_2022]
#'
"poblacion_2022"

#### gastoshogar ###############################################################

#' @title Gastos en los hogares
#'
#' @description
#' Permite identificar los gastos monetarios y no monetarios del hogar.
#'
#' @details
#' Contiene los gastos monetarios y no monetarios que realizó el hogar en el
#' periodo de referencia, así como la estimación del alquiler, que fueron
#' captados en el CUESTIONARIO DE GASTOS DEL HOGAR, en el CUADERNILLO DE GASTOS
#' DIARIOS y en el CUESTIONARIO DE HOGARESY VIVIENDA .
#'
#' * **Llave foránea**: `folioviv`, `foliohog`
#' * **Llave primaria**: `clave`, `tipo_gasto`, `mes_dia`, `forma_pag1`,
#'                      `forma_pag2`, `forma_pag3`, `lugar_comp`, `orga_inst`,
#'                      `frecuencia`, `fecha_adqu`, `fecha_pago`
#'
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'             2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [hogares_2022]
#'
"gastoshogar_2022"

#### erogaciones ###############################################################

#' @title Erogaciones de capital por hogar
#'
#' @description
#' Permite identificar las erogaciones financieras y de capital realizadas por
#' el hogar.
#'
#' @details
#' Erogaciones financieras y de capital captadas en el apartado 3.5 de la
#' sección III del CUESTIONARIO DE GASTOS DEL HOGAR.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`
#' * **Llave primaria**: `clave`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'             2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [hogares_2022]
"erogaciones_2022"

#### gastotarjetas #############################################################

#' @title Gastos realizados por el hogar y que fueron cubiertos mediante alguna
#'        tarjeta de crédito bancaria y/o comercial
#'
#' @description
#' Permite identificar en qué medida los hogares se auxilian del financiamiento
#' que les ofrece la tarjeta de crédito bancaria o comercial para cubrir algunas
#' necesidades básicas.
#'
#' @details
#' Gastos realizados por el hogar y que fueron cubiertos mediante alguna tarjeta
#' de crédito bancaria y/o comercial. Estos fueron captados al final de cada
#' apartado del CUESTIONARIO DE GASTOS DEL HOGAR y en la sección 2 del
#' CUADERNILLO DE GASTOS DIARIOS.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`
#' * **Llave primaria**: `clave`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'            2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [hogares_2022]
"gastotarjetas_2022"

#### ingresos ##################################################################

#' @title Ingresos y percepciones financieras y de capital de los integrantes
#'        del hogar
#'
#' @description
#' permite identificar los ingresos y percepciones financieras y de capital de
#' cada uno de los integrantes del hogar, por diversos conceptos.
#'
#' @details
#' Ingresos y percepciones de capital de cada uno de los integrantes del hogar,
#' captados en los apartados referentes al ingreso en el CUESTIONARIO PARA
#' PERSONAS DE 12 O MÁS AÑOS y en el CUESTIONARIO PARA PERSONAS MENORES DE 12
#' AÑOS, así como los calculados a partir de la información del CUESTIONARIO
#' PARA NEGOCIOS DEL HOGAR.
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`
#' * **Llave primaria**: `clave`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'            2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [hogares_2022], [ingresos_jcf_2022]
"ingresos_2022"

#### gastospersona #############################################################

#' @title Gastos realizados en el hogar a nivel integrante
#'
#' @description
#' Permite identificar los gastos realizados por cada integrante del hogar en
#' educación, transporte público y remuneraciones en especie.
#'
#' @details
#' Contiene los gastos monetarios y no monetarios asociados a los integrantes
#' del hogar en el periodo de referencia y que fueron captados en el
#' CUESTIONARIO DE GASTOS DEL HOGAR y en el CUADERNILLO DE GASTOS DIARIOS.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`
#' * **Llave primaria**: `clave`, `tipo_gasto`, `mes_dia`,  `frec_rem`, `inst`,
#'                       `forma_pag1`, `forma_pag2`, `forma_pag3`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'            2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [poblacion_2022]
"gastospersona_2022"

#### trabajos ##################################################################

#' @title Condición de actividad de los integrantes del hogar de 12 o más años
#'
#' @description
#' Muestra la condición de actividad de los integrantes del hogar de 12 o más
#' años y algunas características ocupacionales durante el periodo de referencia.
#'
#' @details
#' Condición de actividad de los integrantes del hogar de 12 o más años. Se
#' integra con información captada en el CUESTIONARIO PARA PERSONAS DE 12 O MÁS
#' AÑOS.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`
#' * **Llave primaria**: `id_trabajo`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'           2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [poblacion_2022], [agro_2022], [noagro_2022]
"trabajos_2022"

#### agro ######################################################################

#' @title Negocios agropecuarios de los hogares
#'
#' @description
#' Muestra la información de los trabajadores independientes, mayores de 12 años
#' que tienen en el hogar negocios dedicados a las actividades agrícolas,
#' forestales y de tala, además de actividades de cría, explotación y productos
#' derivados de la pesca y caza.
#'
#' @details
#' Ingresos y gastos de los negocios del hogar dedicados tanto a las actividades
#' agrícolas, forestales y de tala, como a actividades de cría, explotación y
#' productos derivados de la pesca y caza. Esta información se capta en el
#' CUESTIONARIO PARA NEGOCIOS DEL HOGAR.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`, `id_trabajo`
#' * **Llave primaria**: `tipoact`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'           2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [trabajos_2022], [agroproductos_2022], [agrogasto_2022]
"agro_2022"

#### noagro ####################################################################

#' @title Negocios no agropecuarios de los hogares
#'
#' @description
#' muestra a los trabajadores independientes mayores de 12 años, que tienen
#' negocios en el hogar dedicados a las actividades industriales, comerciales y
#' de servicios.
#'
#' @details
#' Ingresos y gastos de los negocios del hogar dedicados a las actividades
#' industriales, comerciales y de servicios, y sus características propias.
#' Esta información se capta en el CUESTIONARIO PARA NEGOCIOS DEL HOGAR.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`, `id_trabajo`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogareserences
#'          2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [trabajos_2022], [noagroimportes_2022]
"noagro_2022"

#### agroproductos #############################################################

#' @title Productos de los negocios agrícolas del hogar
#'
#' @description
#' Se encuentran las características de los productos de los negocios agrícolas
#' de los hogares.
#'
#' @details
#' Características de los productos de los negocios agrícolas, forestales y de
#' tala, de cría y explotación y de pesca y caza de los hogares. Esta
#' información se capta en el CUESTIONARIO PARA NEGOCIOS DEL HOGAR.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`, `id_trabajo`, `tipoact`
#' * **Llave primaria**: `numprod`, `codigo`, `cosecha`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'           2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [agro_2022], [agroconsumo_2022]
"agroproductos_2022"

#### agroconsumo ###############################################################

#' @title Destino, cantidad y valor de los productos del negocio del hogar.
#'
#' @description
#' Permite identificar el destino, la cantidad y el valor de los productos del
#' negocio.
#'
#' @details
#' Identificar el destino, la cantidad y el valor estimado de los productos
#' agrícolas del negocio del hogar. Esta información se capta en el CUESTIONARIO
#' PARA NEGOCIOS DEL HOGAR.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`, `id_trabajo`, `tipoact`
#'                      `numprod`, `codigo`, `cosecha`
#' * **Llave primaria**: `destino`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'          2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [agroproductos_2022]
"agroconsumo_2022"

#### agrogasto #################################################################

#' @title Gasto que realiza el negocio del Hogar
#'
#' @description
#' Permite identificar el tipo de gasto que realiza el negocio.
#'
#' @details
#' Gastos que realizan los negocios agrícolas del hogar. Esta información se
#' capta en el CUESTIONARIO PARA NEGOCIOS DEL HOGAR.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`, `id_trabajo`, `tipoact`
#' * **Llave primaria**: `clave`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'         2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [agro_2022]
"agrogasto_2022"

#### noagroimportes ############################################################

#' @title Importe de los productos de los negocios no agrícolas del hogar
#'
#' @description
#' Contiene los importes del negocio
#'
#' @details
#' Gastos que realizan los negocios no agrícolas de los hogares. Esta
#' información se capta en el CUESTIONARIO PARA NEGOCIOS DEL HOGAR.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`, `id_trabajo`
#' * **Llave primaria**: `clave`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'        2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [noagro_2022]
"noagroimportes_2022"

#### concentradohogar ##########################################################

#' @title Principales variables por hogar
#'
#' @description
#' variables construidas a partir de las otras tablas de la base de datos.
#' Registra el resumen concentrado por hogar, de ingresos y gastos en toda
#' modalidad posible. Además todos los ingresos y gastos registrados en esta
#' tabla son trimestrales.
#'
#' @details
#' Esta tabla contiene las variables construidas, a partir de las tablas de la
#' base de datos, que permiten agrupar la información con la cual se obtienen
#' los principales tabulados que el INEGI construye.
#'
#' * **Llave foránea**: `folioviv`, `foliohog`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'        2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [hogares_2022]
"concentradohogar_2022"

#### ingresos_jcf ##############################################################

#' @title Ingresos del programa Jóvenes Construyendo el Futuro
#'
#' @description
#' Permite identificar los ingresos del programa Jóvenes Construyendo el Futuro.
#'
#' @details
#' * **Llave foránea**: `folioviv`, `foliohog`, `numren`
#' * **Llave primaria**: `clave`
#'
#' @references INEGI, 2023. Encuesta Nacional de Ingresos y Gastos de los Hogares
#'       2022. ENIGH. Nueva Serie. [PDF](https://www.inegi.org.mx/app/biblioteca/ficha.html?upc=889463910626)
#'
#' @seealso [ingresos_2022]
"ingresos_jcf_2022"
