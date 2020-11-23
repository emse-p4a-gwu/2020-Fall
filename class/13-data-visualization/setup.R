library(tidyverse)
library(countdown)
library(fontawesome)
library(kableExtra)
options(
    htmltools.dir.version = FALSE,
    knitr.table.format = "html",
    knitr.kable.NA = '',
    tibble.width = Inf)
knitr::opts_chunk$set(
    warning = FALSE,
    message = FALSE,
    fig.retina = 3)
dplyr.width = Inf

theme_set(theme_gray(base_size = 20))

bears <- read_csv(here::here('data', 'bear_killings.csv'))
birds <- read_csv(here::here('data', 'wildlife_impacts.csv'))
