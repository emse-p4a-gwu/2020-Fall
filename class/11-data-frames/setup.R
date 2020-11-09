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

beatles_reset <- tibble(
    firstName   = c("John", "Paul", "Ringo", "George"),
    lastName    = c("Lennon", "McCartney", "Starr", "Harrison"),
    instrument  = c("guitar", "bass", "drums", "guitar"),
    yearOfBirth = c(1940, 1942, 1940, 1943),
    deceased    = c(TRUE, FALSE, FALSE, TRUE)
)

pathToData <- here::here('data', 'data.csv')
wildlife_impacts <- read_csv(pathToData)