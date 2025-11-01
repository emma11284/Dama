#' gráfico de la temperatura mensual
#'
#' grafica la temperatura mensual por estación
#'
#' @param estaciones dataframe con columnas "fecha", "temperatura_abrigo_150cm" y "id"
#' @param colores vector de colores para las series (opcional)
#' @param titulo título del gráfico. Por defecto "Temperatura"
#'
#' @returns un objeto ggplot
#' @examples
#' grafico_temperatura_mensual(estaciones, colores = c("tomato", "dodgerblue"), titulo = "Temperatura mensual promedio")
#'
#' @export
grafico_temperatura_mensual <- function(estaciones, colores = "steelblue", titulo = "Temperatura") {

  datos_mensuales <- estaciones |>
    mutate(mes = floor_date(fecha, "month")) |>
    group_by(id, mes) |>
    summarise(prom_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = "drop")


  g <- ggplot(datos_mensuales, aes(x = mes, y = prom_temp, color = id)) +
    geom_line(size = 1.2) +
    scale_color_manual(values = rep(colores, length(unique(datos_mensuales$id)))) +
    labs(
      title = titulo,
      x = "Mes",
      y = "Temperatura promedio (°C)",
      color = "Estación"
    ) +
    theme_minimal()

  return(g)
}


