# Issue with font awesome icons in the navbar:
# https://github.com/rstudio/rmarkdown/issues/1554

# Install my version of rmarkdown with icon fix until the bug is fixed:
devtools::install_github('jhelvy/rmarkdown')


rmarkdown::render_site()
rmarkdown::render(input = 'README.Rmd', output_format = 'github_document')
