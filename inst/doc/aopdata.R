## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = identical(tolower(Sys.getenv("NOT_CRAN")), "true"),
  out.width = "100%"
)

## ----message = FALSE, eval = FALSE--------------------------------------------
# # CRAN
# install.packages("aopdata")
# 
# # dev version from github
# utils::remove.packages('aopdata')
# devtools::install_github("ipeaGIT/aopdata", subdir = "r-package")
# 

## ----message = FALSE, eval = TRUE---------------------------------------------
library(aopdata)


## ----message = FALSE, eval = TRUE---------------------------------------------
# for English
aopdata_dictionary(lang = 'en')

# for Portuguese
aopdata_dictionary(lang = 'pt')

## ----message = FALSE, eval = TRUE---------------------------------------------
# Download accessibility, population and land use data
df <- aopdata::read_access(
  city = 'Curitiba', 
  mode = 'public_transport', 
  peak = TRUE,
  year = 2019,
  showProgress = FALSE
  )

## ----message = FALSE, eval = TRUE---------------------------------------------
# Download accessibility, population and land use data
df <- aopdata::read_access(
  city = 'Curitiba', 
  mode = 'public_transport', 
  peak = TRUE,
  year = 2019,
  geometry = TRUE
  )

## ----message = FALSE, eval = TRUE---------------------------------------------
# Land use data
df <- aopdata::read_landuse(
  city = 'Fortaleza', 
  year = 2019,
  geometry = TRUE,
  showProgress = FALSE
  )

# Population data
df <- aopdata::read_population(
  city = 'Fortaleza', 
  year = 2010,
  geometry = TRUE,
  showProgress = FALSE
  )

## ----message = FALSE, eval = TRUE---------------------------------------------
h3 <- aopdata::read_grid(city = 'Fortaleza', showProgress = FALSE)


## ----message = FALSE, eval = TRUE---------------------------------------------
df <- aopdata::read_access(
  city = 'cur', 
  mode = 'public_transport', 
  year = 2019,
  peak = TRUE,
  showProgress = FALSE
  )

df <- aopdata::read_grid(city = 'for', showProgress = FALSE)

## ----message = FALSE, eval = FALSE--------------------------------------------
# df <- aopdata::read_landuse(city = 'all', year = 2019)
# 

