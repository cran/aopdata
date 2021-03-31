## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)


## ---- message = FALSE---------------------------------------------------------
# load libraries
library(aopdata)
library(data.table)
library(ggplot2)
library(sf)

## ---- message = FALSE---------------------------------------------------------

# download aop data
df <- read_landuse(city='Fortaleza',
                   year=2019,
                   geometry = T,
                   showProgress = F)


## ---- message = FALSE---------------------------------------------------------
ggplot() +
  geom_sf(data=subset(df, P001>0), aes(fill=P001), color=NA, alpha=.7) +
  scale_fill_distiller(palette = "YlOrRd", direction = 1)+
  labs(title='Population distribution', fill="Total population") +
  theme_void()


## ---- message = FALSE, eval = FALSE-------------------------------------------
#  ggplot() +
#    geom_sf(data=subset(df, !is.na(R002)), aes(fill=factor(R003)), color=NA, alpha=.7) +
#    scale_fill_brewer(palette = "RdBu") +
#    labs(title='Average household income per capita', fill="Income decile") +
#    theme_void()
#  

## ---- message = FALSE, eval=FALSE---------------------------------------------
#  ggplot() +
#    geom_sf(data=df, aes(fill=E003), color=NA, alpha=.7) +
#    scale_fill_distiller(palette = "YlOrRd", direction = 1)+
#    labs(title='Spatial distribution of elementary schools', fill="N. of schools") +
#    theme_void()
#  

## ---- message = FALSE, eval=TRUE----------------------------------------------
ggplot() +
  geom_sf(data=df, aes(fill=S004), color=NA, alpha=.7) +
  scale_fill_distiller(palette = "YlGnBu", direction = 1)+
  labs(title='Spatial distribution of hospitals', fill="N. of hospitals") +
  theme_void()


