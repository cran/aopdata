## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#  # CRAN
#  install.packages('aopdata')
#  
#  # github
#  devtools::install_github("ipeaGIT/aopdata", subdir = "r-package")

## ----message=TRUE-------------------------------------------------------------
# load the aopdata package
library(aopdata)

# A dataframe, with no spatial geometry
cur <- read_access(city = 'Curitiba', 
                   mode = 'public_transport', 
                   year = 2019, 
                   geometry = FALSE,
                   showProgress = FALSE)

## -----------------------------------------------------------------------------
dplyr::glimpse(cur)

