library(magick)

# Get the lesson name
lesson <- strsplit(here::here(), '/')[[1]]
lesson <- paste0('slides-', lesson[length(lesson)])
names <- list(
    rmd  = paste0(lesson, '.Rmd'),
    html = paste0(lesson, '.html'),
    pdf  = paste0(lesson, '.pdf'))

# Build the deck
rmarkdown::render(names$rmd, 'xaringan::moon_reader')

# Save as pdf
pagedown::chrome_print(
    input  = here::here(paste0(lesson, '.html')),
    output = here::here(paste0(lesson, '.pdf')))

# Create and save thumbnail image of title slide
pagedown::chrome_print(
    input  = here::here(paste0(lesson, '.html')),
    output = here::here('thumbnail.png'), 
    format = 'png')
