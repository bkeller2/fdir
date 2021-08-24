# Functions for helping loading files in R

#' @import rstudioapi getSourceEditorContext

# Gets file director
#' @export
get <- function(file = NULL, sep = '/') {
    if (is.null(file)) return(dirname(rstudioapi::getSourceEditorContext()$path))
    return(paste0(fdir::get(), sep, file))
}

# Sets the working directory to file directory
#' @export
set <- function() {
    setwd(fdir::get())
}


# Sets the working directory to file directory
#' @export
set <- function() {
    setwd(fdir::get())
}

