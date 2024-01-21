library(readr)
library(dplyr)
library(ggplot2)

data <- read_csv("./data/nyc_scores.csv")

print(ggplot(data, aes(x = City)) +
  geom_bar(fill = "#0105fa") +
  coord_flip() +
  labs(
    x = "City",
    y = "Frecuencia",
    title = "Gráfico de barra de la variable cualitativa City"
  ) +
  theme(plot.title = element_text(hjust = 1)))

porcent_etnicos <- select(data, Percent_White, Percent_Black, Percent_Asian)
boxplot(porcent_etnicos,
  main = "Diagrama de cajas de los porcentajes de estudiantes \
          blancos, negros y asiáticos",
  names = colnames(porcent_etnicos),
  col = c("#BCEE68", "#FFD700", "#FF6347")
)

pie(table(data$Borough),
  main = "Gráfico de pastel de la variable cualitativa Borough",
  col = c("#BCEE68", "#FFD700", "#FF6347", "#FFA500", "#FFC0CB", "#00FFFF")
)

sat_puntajes <- select(
  data,
  Average_Score_SAT_Math, Average_Score_SAT_Reading, Average_Score_SAT_Writing
)
boxplot(sat_puntajes,
  main = "Diagrama de cajas de los promedios de la masterias SAT",
  names = colnames(sat_puntajes),
  col = c("#BCEE68", "#FFF68F", "#A2B5CD")
)

hist(data$Percent_Tested,
  main = "Histograma de estudiantes testados",
  xlab = "Porcentaje de estudiantes testados",
  ylab = "Frecuencia",
  col = "#99cfe0"
)
