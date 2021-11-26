library(rmarkdown)

#' Creates a Beamer Presentation for my personal taste
qprez <- function(...) {
    template = system.file("rmarkdown", "templates", "qprez", "resources", "template.tex", package = "qprez")
    if (template == "") {
        stop("Could not find the template")
    }
	rmarkdown::beamer_presentation(template = template, ...)
}
