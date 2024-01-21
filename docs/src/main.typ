#import "template.typ": *

#show: project.with(
  title: "Proyecto de Estadística",
  authors: (
    (name: "Juan Antonio González", email: "juangonz@espol.edu.ec", affiliation: "ESPOL (FIEC)"),
    (name: "ABC", email: "@espol.edu.ec", affiliation: "ESPOL ()"),
    (name: "ABC", email: "@espol.edu.ec", affiliation: "ESPOL ()"),
    (name: "ABC", email: "@espol.edu.ec", affiliation: "ESPOL ()"),
    (name: "ABC", email: "@espol.edu.ec", affiliation: "ESPOL ()"),
  ),
  date: "January 6, 2024",
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

= Objetivos

== Identificar diferencias en las puntuaciones SAT en función de la ubicación geográfica

Este objetivo busca identificar si existen diferencias significativas en las
puntuaciones SAT entre diferentes escuelas y distritos, utilizando las
coordenadas de latitud y longitud para determinar la ubicación geográfica de las
escuelas. Este análisis podría proporcionar información sobre qué regiones
geográficas están obteniendo un rendimiento superior y cuáles podrían necesitar
intervenciones o apoyos adicionales para mejorar el rendimiento académico de sus
estudiantes.

== Investigar la correlación entre la diversidad étnica y las puntuaciones SAT

Este objetivo busca explorar si existe una correlación entre la diversidad
étnica en las escuelas (porcentajes de estudiantes blancos, negros y
asiáticos) y las puntuaciones promedio de SAT en matemáticas, lectura y
escritura. Este análisis podría proporcionar una visión valiosa sobre la equidad
en el rendimiento académico entre diferentes grupos étnicos.

#bibliography("bib.bib", style: "apa")