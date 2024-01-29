library(readr)
library(dplyr)
library(ggplot2)
library(readxl)
library(PerformanceAnalytics)


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

data_avg_sat <- read_csv("./data/avg_sat.csv")

plot(data_avg_sat)
cor(data_avg_sat)
chart.Correlation(data_avg_sat, histogram = FALSE, pch = 5)

resultado_anova <- aov(data$Average_SAT ~ data$City, data = data)
print(summary(resultado_anova))

model_Math <- lm(Student_Enrollment ~ Average_Score_SAT_Math, data = data )
model_Reading <- lm(Student_Enrollment ~ Average_Score_SAT_Reading, data = data)
model_Writing <- lm(Student_Enrollment ~ Average_Score_SAT_Writing, data = data)
summary(model_Math)
summary(model_Reading)
summary(model_Writing)

# Gráfico y predicciones para model_Math
plot(data$Average_Score_SAT_Math, data$Student_Enrollment, 
     main = "Regresión Lineal - Math",
     xlab = "Average Score SAT Math", ylab = "Student Enrollment")
abline(model_Math, col = "red")

nuevos_datos_math <- data.frame(Average_Score_SAT_Math = runif(100, min = 400, max = 1000))
predicciones_math <- predict(model_Math, newdata = nuevos_datos_math)

# Gráfico y predicciones para model_Reading
plot(data$Average_Score_SAT_Reading, data$Student_Enrollment, 
     main = "Regresión Lineal - Reading",
     xlab = "Average Score SAT Reading", ylab = "Student Enrollment")
abline(model_Reading, col = "blue")

nuevos_datos_reading <- data.frame(Average_Score_SAT_Reading = runif(100, min = 400, max = 1000))
predicciones_reading <- predict(model_Reading, newdata = nuevos_datos_reading)

predicciones_reading # Para ver las predicciones

# Gráfico y predicciones para model_Writing
plot(data$Average_Score_SAT_Writing, data$Student_Enrollment, 
     main = "Regresión Lineal - Writing",
     xlab = "Average Score SAT Writing", ylab = "Student Enrollment")
abline(model_Writing, col = "green")

nuevos_datos_writing <- data.frame(Average_Score_SAT_Writing = runif(100, min = 400, max = 1000))
predicciones_writing <- predict(model_Writing, newdata = nuevos_datos_writing)