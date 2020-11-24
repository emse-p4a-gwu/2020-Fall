library(tidyverse)
library(hrbrthemes)
library(here)

df <- read_csv(here('data', 'north_america_bear_killings.csv'))

hrbrthemes_theme_ipsum <- ggplot(data = df) +
    geom_point(aes(x = year, y = age)) +
    theme_ipsum()

hrbrthemes_theme_ft_rc <- ggplot(data = df) +
    geom_point(aes(x = year, y = age)) +
    theme_ft_rc()

ggsave(filename = here('images', 'hrbrthemes_theme_ipsum.png'),
       plot   = hrbrthemes_theme_ipsum,
       width  = 6,
       height = 4)

ggsave(filename = here('images', 'hrbrthemes_theme_ft_rc.png'),
       plot   = hrbrthemes_theme_ft_rc,
       width  = 6,
       height = 4)
