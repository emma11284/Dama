#' tabla resumen de temperatura
#'
#' devuelve una tabla de resumen de temperatura_abrigo_150cm para una o más estaciones.
#'
#' @param estaciones dataframe con las columnas "id" y "temperatura_abrigo_150cm"
#'
#' @returns un tibble con promedio y desvío estándar por estación
#' @examples
#' df <- leer_estacion("NH0437", "datos/NH0437.csv")
#'   tabla_resumen_temperatura(df)
#'
#' @export
tabla_resumen_temperatura <- function(estaciones) {
  resumen <- estaciones  |>
    group_by(id)  |>
    summarise(
      promedio_abrigo = mean(temperatura_abrigo_150cm, na.rm = TRUE),
      desvio          = sd(temperatura_abrigo_150cm, na.rm = TRUE),
    )

  return(resumen)
}
