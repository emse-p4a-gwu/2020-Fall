
lesson <- strsplit(here::here(), '/')[[1]]
lesson <- paste0('slides-', lesson[length(lesson)], '.Rmd')
xaringanBuilder::build_all(lesson, include = c('html', 'pdf', 'thumbnail'))
