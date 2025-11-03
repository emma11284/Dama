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

grafico_temperatura_mensual <- function(estacion, colores = NULL, titulo = "Temperatura") {
  estacion |>
    dplyr::mutate(
      mes = lubridate::floor_date(.data$fecha, "month")) |>
    dplyr::group_by(mes, id) |>
    dplyr::summarise(temperatura_promedio = mean(.data$temperatura_abrigo_150cm, na.rm = TRUE)) |>

    ggplot2::ggplot(ggplot2::aes(x = mes, y = temperatura_promedio, color = id)) +
    ggplot2::scale_color_manual(values = colores) +
    ggplot2::labs(
      title = titulo,
      x = "Mes",
      y = "Temperatura promedio (°C)",
      color = "Estación"
    )

}
