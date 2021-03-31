## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)


## ---- message = FALSE---------------------------------------------------------
library(aopdata)
library(sf)
library(ggplot2)
library(data.table)

## ---- message = FALSE---------------------------------------------------------
# download aop data
df <- aopdata::read_access(city='Curitiba',
                       mode='public_transport',
                      year=2019,
                      peak = F,
                      geometry = T,
                      showProgress = F)

## ---- message = FALSE---------------------------------------------------------
ggplot() +
  geom_sf(data=df, aes(fill=CMATT60), color=NA, alpha=.9) +
  scale_fill_viridis_c(option = "inferno", labels=scales::percent) +
  labs(title='Proportion of jobs accessible', fill="Accessibility",
       subtitle='by public transport in less than 60 min.') +
  theme_void()



## ---- message = FALSE, eval=FALSE---------------------------------------------
#  ggplot() +
#    geom_sf(data=df, aes(fill=CMAET30), color=NA, alpha=.7) +
#    scale_fill_viridis_c(option = "inferno", labels=scales::percent) +
#      labs(title='Proportion of schools accessible', fill="Accessibility",
#         subtitle='by public transport in less than 30 min.', fill="N. of schools") +
#    theme_void()
#  

