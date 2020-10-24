library(tidyverse)
library(hrbrthemes)
library(jhelvyr)

yearly_tag <- read_csv("https://gist.githubusercontent.com/dgrtwo/a30d99baa9b7bfc9f2440b355ddd1f75/raw/700ab5bb0b5f8f5a14377f5103dbe921d4238216/by_tag_year.csv")

yearly_tag <-
    yearly_tag %>%
    mutate(fraction = round(number/year_total, 4))

# Get the six largest tags
programming_lang <- c("r", "python", "c#", "java", "JavaScript", "php", "c++", "ruby")

yearly_top <-
  yearly_tag %>%
  filter(tag %in% programming_lang)

d_ends <-
  yearly_top %>%
  group_by(tag) %>%
  slice(n()) %>%
  pull(fraction)

d_ends[1] <- 0.053
d_ends[6] <- 0.024

d_labels <-
  yearly_top %>%
  group_by(tag) %>%
  slice(n()) %>%
  pull(tag)

languages <- yearly_top %>%
   mutate(
     color = ifelse(tag == "python", "python",
             ifelse(tag == "r", "r", "other")),
     label = ifelse(year == max(year), tag, NA)) %>%
  ggplot(aes(x = year, y = fraction, color = color)) +
  geom_line(aes(group = tag),
            size = 1.5, alpha = .8) +
  geom_point(size = 2) +
  geom_text(aes(label = label), hjust = 0, nudge_x = 0.25, size = 4) +
  scale_x_continuous(expand = c(0, 0), breaks = c(2008:2018)) +
  scale_y_continuous(
    labels = scales::percent, breaks = c(0, .025, .05, .075, .1, .125)) +
  scale_color_manual(values = jColors("basic", c("gray", "blue", "red"))) +
  theme_ipsum()  +
  # Create space for labels on right side
  coord_cartesian(clip = 'off') +
  theme(legend.position = 'none',
        # Remember "trouble": T    R    B    L
        plot.margin = margin(0.2, 1.5, 0.2, 0.2, "cm")) +
    labs(title = "Fraction of total questions per year in Stack Overflow",
       subtitle = "for top programming languages",
       x = "",
       y = "Fraction of total queries in the year")

ggsave(here::here('images', 'languages.pdf'), languages,
       width = 7, height = 4.5, device = cairo_pdf)
