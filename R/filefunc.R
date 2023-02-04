# Functions for helping loading files in R

#' @import rstudioapi getSourceEditorContext

# Gets file director
#' @export
here <- function(file = NULL, sep = '/') {
    file <- tryCatch(
        eval(substitute(file)),
        error = function(e) substitute(file)
    )
    if (is.null(file)) {
        filename <- rstudioapi::getSourceEditorContext()$path
        if (is.null(filename)) return(getwd())
        else return(dirname(filename))
    }
    return(paste0(fdir::here(), sep, file))
}

# Sets the working directory to file directory
#' @export
set <- function() {
    setwd(fdir::here())
}


# Sets the working directory to file directory
#' @export
set <- function() {
    setwd(fdir::here())
}

