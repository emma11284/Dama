<<<<<<< HEAD
---
editor_options: 
  markdown: 
    wrap: 72
---
=======
>>>>>>> 90ba661a4f98adc7723ec8676e4594723a49dccd

<!-- README.md is generated from README.Rmd. Please edit that file -->

# Dama

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<<<<<<< HEAD
[![R-CMD-check](https://github.com/emma11284/Dama/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/emma11284/Dama/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

The goal of Dama is to …

## Installation

You can install the development version of Dama from
[GitHub](https://github.com/) with:
=======

<!-- badges: end -->

## Instalación

Puedes instalar la versión de desarrolo de Dama desde
[GitHub](https://github.com/) con:
>>>>>>> 90ba661a4f98adc7723ec8676e4594723a49dccd

``` r
# install.packages("pak") 
pak::pak("emma11284/Dama") 
```

## Example

<<<<<<< HEAD
This is a basic example which shows you how to solve a common problem:
=======
### 1. `leer_estacion()`

Esta función se encarga de **descargar y leer los datos de una o varias
estaciones meteorológicas**.  
Permite importar los registros de temperatura desde una fuente de datos,
preparándolos para ser analizados o visualizados.  
Constituye el primer paso del flujo de trabajo dentro del paquete.

**Ejemplo:**
>>>>>>> 90ba661a4f98adc7723ec8676e4594723a49dccd

``` r
library(Dama)
## basic example code
```

<<<<<<< HEAD
What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:
=======
### 2. `resumen_temp()`

La función `resumen_temp()` produce una **tabla de resumen estadístico**
de la variable `temperatura_abrigo_150cm` para una o más estaciones.  
Incluye medidas como el promedio, el valor mínimo y el máximo
registrados, entre otras.  
Su finalidad es ofrecer una visión general y comparativa de los datos de
temperatura obtenidos, facilitando el análisis descriptivo.

**Ejemplo:**

``` r
df <- leer_estacion("NH0437", "datos/NH0437.csv")     tabla_resumen_temperatura(df)
```

### 3. `grafico_temp_mensual()`

Esta función **genera un gráfico de la temperatura mensual promedio** de
una estación determinada.  
A partir de los datos leídos con `leer_estacion()`, construye una
visualización que muestra la evolución de la temperatura a lo largo de
los meses.  
Es especialmente útil para observar patrones, variaciones o tendencias
en el comportamiento térmico de una estación específica.

**Ejemplo:**
>>>>>>> 90ba661a4f98adc7723ec8676e4594723a49dccd

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

<<<<<<< HEAD
You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%"/>

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
=======
### 
>>>>>>> 90ba661a4f98adc7723ec8676e4594723a49dccd
