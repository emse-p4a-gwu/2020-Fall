library(tidyverse)
library(here)

birds <- read_csv(here('data', 'wildlife_impacts.csv'))
bears <- read_csv(here('data', 'bear_killings.csv'))

# Think pair share 1 ----------------------------------------

# Does the annual number of bird impacts appear to be changing over time?
# Make a plot using the birds data frame to justify your answer
# Hint: You may need to create a summary data frame to answer this question!
# Bonus points: Make your plot pretty

glimpse(birds)

birds %>%
    group_by(incident_year) %>%
    summarise(count = n())

annualImpacts <- birds %>%
    count(incident_year)

plot(annualImpacts$incident_year, annualImpacts$n)

plot(
  x = annualImpacts$incident_year,
  y = annualImpacts$n,
  col  = "darkblue",
  pch = 19,
  main = "Annual wildlife impacts",
  xlab = "Year",
  ylab = "Count")

# Think pair share 2 ----------------------------------------

# Make plots using the birds data frame to answer these questions

# Which months have the highest and lowest number of bird
# impacts in the dataset?
hist(birds$incident_month, breaks = 12)

birds %>% 
  count(incident_month) %>% 
  arrange(desc(n))

# Which aircrafts experience more impacts: 2-engine, 3-engine, or 4-engine?
hist(birds$num_engs)

birds %>% 
  count(num_engs) 

# At what height do most impacts occur?
hist(birds$height, breaks = 100)

mean(birds$height, na.rm = TRUE)

# Bonus points: Make your plots pretty






# Think pair share 3 ----------------------------------------

# Use the birds data frame to create the following plots

ggplot(birds, aes(x = cost_repairs_infl_adj, y = height)) +
  geom_point()

ggplot(birds) +
  geom_point(aes(x = cost_repairs_infl_adj, y = height))

birds %>%
  mutate(phase_of_flt = str_to_lower(phase_of_flt)) %>%
  ggplot(aes(x = speed, y = height)) +
  geom_point(aes(color = phase_of_flt))





# Think pair share 4 ----------------------------------------

# Use the bears and birds data frame to create the following plots

bears %>%
  count(year, gender) %>%
  ggplot() +
  geom_col(aes(x = year, y = n, fill = gender)) +
  labs(x     = "Year",
       y     = 'Number of killings',
       fill  = "Victim gender",
       title = "Annual deadly bear attacks over time")

birds %>%
  filter(!is.na(cost_repairs_infl_adj)) %>%
  group_by(incident_year) %>%
  summarise(maxCost = max(cost_repairs_infl_adj)) %>%
  ggplot() +
  geom_col(aes(x = incident_year, y = maxCost)) +
  labs(x     = "Year",
       y     = 'Maximum cost ($)',
       title = "Max annual cost from wildlife impact")



# Extra practice 1 --------------------------------------------

# Use the mtcars data frame to create the following plots

ggplot(mtcars, aes(x=wt, y=mpg)) +
    geom_point() +
    theme_bw() +
    labs(x = "Weight",
         y = 'Fuel Economy (mpg)')

ggplot(mtcars, aes(x=hp, y=mpg)) +
    geom_point(aes(color=as.factor(cyl))) +
    theme_bw() +
    labs(x = "Horsepower (hp)",
         y = 'Fuel Economy (mpg)',
         color = 'Num. Cylinders')

mtcars %>%
  group_by(cyl) %>%
  summarise(meanMpg = mean(mpg)) %>%
  ggplot(aes(x=cyl, y=meanMpg)) +
  geom_bar(stat = 'identity') +
  labs(x = "Num. Cylinders",
       y = 'Mean Fuel Economy (mpg)')

# Extra practice 2 --------------------------------------------

# Use the mpg data frame to create the following plot

mpg %>%
    mutate(manufacturer = str_to_title(manufacturer)) %>%
    group_by(manufacturer) %>%
    summarise(meanHwy = mean(hwy)) %>%
    ggplot(aes(x=reorder(manufacturer, meanHwy), y=meanHwy)) +
    geom_bar(stat='identity') +
    coord_flip() +
    labs(
        x='Vehicle manufacturer',
        y='Highway fuel economy (mpg)')

