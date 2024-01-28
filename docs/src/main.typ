#import "template.typ": *

#show: project.with(
  title: "Proyecto de Estadística",
  authors: (
    (name: "Juan Antonio González",      email: "juangonz@espol.edu.ec", affiliation: "ESPOL (FIEC)"),
    (name: "Gary Steven Flores",         email: "gsflores@espol.edu.ec", affiliation: "ESPOL (FIMCM)"),
    (name: "Gabriel Cañarte Lucio",      email: "lcanarte@espol.edu.ec", affiliation: "ESPOL (FIEC)"),
    (name: "Ramón Ignacio Macías Ochoa", email: "rimacias@espol.edu.ec", affiliation: "ESPOL (FIEC)"),
    (name: "Germán David Correa",        email: "gdcorrea@espol.edu.ec", affiliation: "ESPOL (FIMCM)"),
  )
)

= Introduction

El presente informe se enfoca en el análisis de las puntuaciones SAT en las
escuelas de Nueva York. La elección de este conjunto de datos se basa en la
relevancia y el impacto que tienen estas puntuaciones en la educación y el
futuro de los estudiantes en la ciudad de Nueva York, Estados Unidos.
El análisis de estas puntuaciones puede proporcionar información valiosa sobre
la calidad de la educación en diferentes escuelas y distritos, lo que puede ser
útil para los responsables de la toma de decisiones en el ámbito de la
educación.

La base de datos a analizar incluye información detallada sobre las escuelas de
Nueva York, el nombre de la escuela, el distrito, ciudad, estado, horario de
inicio y fin, matrícula de estudiantes y porcentaje de estudiantes de diferentes
grupos étnicos. Además, se proporcionan las puntuaciones promedio de SAT en
asignaturas como matemáticas, lectura y escritura, así como el porcentaje de
estudiantes que realizaron la prueba.

#pagebreak()

= Objetivos

#v(1em)

== Objetivo General

Evaluar las puntuaciones SAT en las escuelas de Nueva York y determinar si
existen diferencias significativas en las puntuaciones en función de la
ubicación geográfica y la diversidad étnica.

#v(1em)

== Objetivos Específicos

#v(1em)

1. Identificar diferencias en las puntuaciones SAT en función de la ubicación geográfica
2. Investigar la correlación entre la diversidad étnica y las puntuaciones SAT
3. XYZ

#pagebreak()

= Metodología

#figure(
  image("./assets/graf_bar_frec_cities.png", width: 100%),
  caption: "Gráfico de barras de frecuencias de la variable cualitativa City.",
)

#figure(
  image("./assets/graf_caja_porc_etnias.png", width: 100%),
  caption: "Diagrama de cajas de los porcentajes de estudiantes blancos, negros y asiáticos.",
)

#figure(
  image("./assets/graf_caja_sat_avg.png", width: 100%),
  caption: "Diagrama de cajas de los promedios de la masterias SAT.",
)

#figure(
  image("./assets/graf_hist_est_test.png", width: 100%),
  caption: "Histograma de estudiantes testados",
)

#figure(
  image("./assets/graf_pastel_borough.png", width: 100%),
  caption: "Gráfico de pastel de la variable cualitativa Borough",
)

#pagebreak()

= Análisis y Resultados

== Análisis de Correlación entre el promedio SAT y etnias

#figure(
  image("./assets/graf_correlacion1.png", width: 70%),
  caption: "Gráfico de correlación #1",
)

#figure(
  image("./assets/graf_correlacion2.png", width: 80%),
  caption: "Gráfico de correlación #2",
)

#pagebreak()

En la Figura *7* se presentan los resultados de la correlación entre las
variables `Average_SAT`, `Percent_White`, `Percent_Black` y `Percent_Asian`. 
Se puede observar que la correlación entre `Average_SAT` y `Percent_White` es
positiva con un valor de `0.6234902`, lo que indica que existe una relación
directa entre estas dos variables. Por otro lado, la correlación entre
`Average_SAT` y `Percent_Black` es negativa con un valor de `-0.3048109`, lo que
sugiere una relación inversa entre ambas variables. Así mismo, se puede apreciar
que la correlación entre `Average_SAT` y `Percent_Asian` es positiva con un
valor de `0.6098355`, lo que indica una relación directa entre estas dos
variables. Por último, la correlación entre `Percent_White` y `Percent_Black` es
negativa con un valor de `-0.4220592`, mientras que la correlación entre
`Percent_White` y `Percent_Asian` es positiva con un valor de `0.3555783`.

Estos resultados muestran que existe una relación entre las variables analizadas
y que es importante tener en cuenta su impacto en los resultados del *SAT*.

#pagebreak()

== ANOVA ONE WAY entre variables promedio SAT y City

#v(1em)

#figure(
  image("./assets/anova.png", width: 90%),
  caption: "Resultados del ANOVA ONE WAY entre variables promedio SAT y City",
)

La figura anterior muestra el análisis de los resultados del ANOVA en donde se
revela una diferencia significativa entre las variables `Average_SAT` y `City`.

Según los datos obtenidos, se puede concluir que la ciudad de residencia de los
estudiantes influye de manera significativa en el rendimiento promedio del
examen *SAT*. Con un valor de `F` de `2.854` y un `p-valor` de `1.45e-05`, se
puede afirmar con seguridad que existe una relación entre ambas variables. Pese
a esto, es importante tener en cuenta que aún hay un alto porcentaje de
variabilidad que no puede ser explicado por la ciudad de residencia, lo cual
sugiere que existen otros factores que también pueden influir en el rendimiento
en el examen SAT.

#pagebreak()

= Anexos

== Código Fuente

El código fuente de este proyecto se encuentra disponible en el siguiente
#link("https://github.com/anntnzrb/estg1034-proy")[enlance a GitHub] \
`<https://github.com/anntnzrb/estg1034-proy>`.

#pagebreak()

#bibliography("bib.bib", style: "apa")
