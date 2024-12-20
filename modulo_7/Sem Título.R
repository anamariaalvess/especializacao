library(bigrquery)


project_id <-  "glowing-jetty-439812-e0"

query <- "SELECT * FROM `glowing-jetty-439812-e0.Covid_aula.casos_estado`"

tb <- bq_project_query(project_id, query)

result <- bq_table_download(tb)

library(ggplot2)

# Gráfico de barras para total de casos por estado
ggplot(result, aes(x = reorder(state, -total_casos), y = total_casos)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Total de Casos por Estado", x = "Estado", y = "Total de Casos") +
  theme_minimal() +
  coord_flip()
