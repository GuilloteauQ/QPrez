library(rmarkdown)

#' Creates a Beamer Presentation for my personal taste
qprez <- function(...) {
    template = system.file("rmarkdown", "templates", "qprez", "resources", "template.tex", package = "qprez")
    if (template == "") {
        stop("Could not find the template")
    }
    file_sty_shark = system.file("rmarkdown", "templates", "qprez", "resources", "sty", "beamercolorthemeshark.sty", package = "qprez")
    file_sty_chamfered = system.file("rmarkdown", "templates", "qprez", "resources", "sty", "beamerinnerthemechamfered.sty", package = "qprez")
    file_sty_wuerzburg = system.file("rmarkdown", "templates", "qprez", "resources", "sty", "beamerouterthemewuerzburg.sty", package = "qprez")
    file_sty_cbf = system.file("rmarkdown", "templates", "qprez", "resources", "sty", "cbfcolors.sty", package = "qprez")

    sty_shark = paste("\\usepackage{", file_sty_shark, "}", sep="")
    sty_chamfered = paste("\\usepackage[outline]{", file_sty_chamfered, "}", sep="")
    sty_wuerzburg = paste("\\usepackage[]{", file_sty_chamfered, "}", sep="")
    sty_cbf = paste("\\usepackage{", file_sty_cbf, "}", sep="")

    includes <- list()
    includes$in_header <- c(sty_shark, sty_chamfered, sty_wuerzburg, sty_cbf)
	rmarkdown::beamer_presentation(template = template, includes = includes, ...)
}
