## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = identical(tolower(Sys.getenv("NOT_CRAN")), "true"),
  out.width = "100%"
)

## ---- message = FALSE, eval = TRUE--------------------------------------------
# load libraries
library(aopdata)
library(data.table)
library(ggplot2)
library(sf)
library(scales)

## ---- message = FALSE, eval = TRUE--------------------------------------------

# download aop data
df <- read_landuse(city='Fortaleza',
                   year=2019,
                   geometry = T,
                   showProgress = F)


## ---- message = FALSE, eval = TRUE--------------------------------------------
ggplot() +
  geom_sf(data=df, aes(fill=T001), color=NA, alpha=.9) +
  scale_fill_distiller(palette = "YlOrRd", direction = 1) +
  labs(title='Spatial distribution of jobs', fill="N. of jobs") +
  theme_void()


## ---- message = FALSE, eval = TRUE--------------------------------------------
ggplot() +
  geom_sf(data=df, aes(fill=factor(E003)), color=NA, alpha=.9) +
  scale_fill_brewer(palette = "PuBuGn", direction = 1) +
  labs(title='Spatial distribution of elementary schools', fill="N. of schools") +
  theme_void()


## ---- message = FALSE, eval = TRUE--------------------------------------------
ggplot() +
  geom_sf(data=df, aes(fill=factor(S004)), color=NA, alpha=.9) +
  scale_fill_brewer(palette = "YlGnBu", direction = 1)+
  labs(title='Spatial distribution of hospitals', fill="N. of hospitals") +
  theme_void()


## ---- message = FALSE, eval = TRUE--------------------------------------------
ggplot() +
  geom_sf(data=df, aes(fill=factor(C001)), color=NA, alpha=.9) +
  scale_fill_brewer(palette = "RdPu", direction = 1)+
  labs(title='Spatial distribution of CRAS facilities', fill="N. of CRAS") +
  theme_void()


