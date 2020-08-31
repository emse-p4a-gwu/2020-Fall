# Issue with font awesome icons in the navbar:
# https://github.com/rstudio/rmarkdown/issues/1554

# Install my version of rmarkdown with icon fix until the bug is fixed:
devtools::install_github('jhelvy/rmarkdown')

rmarkdown::render_site()
rmarkdown::render(input = 'README.Rmd', output_format = 'github_document')

# Build class slides
folder <- '1-getting-started'
file   <- paste0('slides-', folder)

# Save the slides
pagedown::chrome_print(
    input  = here::here('class', folder, paste0(file, '.html')),
    output = here::here('class', folder, paste0(file, '.pdf')))
