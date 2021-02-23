#' @title Load File into object
#'
#' @param x An object
#' @param y A file name
#'
#' @return The object containing the data read in from the file
#' @export
#'
#' @examples
#' ddt = loadFile(ddt, "DDT.csv")
loadFile <- function(x, y){
  x <- read.csv(y)
}
