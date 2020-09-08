library(magick)

# Build and save the slides
lesson <- strsplit(here::here(), '/')[[1]]
lesson <- paste0('slides-', lesson[length(lesson)])
pagedown::chrome_print(
    input  = here::here(paste0(lesson, '.html')),
    output = here::here(paste0(lesson, '.pdf')))

# Create thumbnail imagez
pagedown::chrome_print(
    input  = here::here(paste0(lesson, '.html')),
    output = here::here('thumbnail.png'), 
    format = 'png')
