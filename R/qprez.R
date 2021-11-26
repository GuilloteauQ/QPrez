library(rmarkdown)

#' Creates a Beamer Presentation for my personal taste
qprez <- function(...) {
	rmarkdown::beamer_presentation(template = "template.tex", ...)
}
