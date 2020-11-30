library(tidyverse)
library(countdown)
library(fontawesome)
library(kableExtra)
library(emo)
library(ymlthis)
library(arsenal)
library(janitor)
library(scico)
library(cowplot)

options(
    htmltools.dir.version = FALSE,
    knitr.table.format = "html",
    knitr.kable.NA = '',
    tibble.width = Inf)
knitr::opts_chunk$set(
    comment = "#>",
    warning = FALSE,
    message = FALSE,
    fig.retina = 3)

bears <- read_csv(here::here('data', 'bear_killings.csv'))
birds <- read_csv(here::here('data', 'wildlife_impacts.csv'))
