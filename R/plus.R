# issue is i need to completely break the + function in R

#' plus function
#'
#' this is wrong, it actually does minus
#'
#' @param e1 a number
#' @param e2 a number
#' @return another number
#' @export
`+` = function(e1, e2) {
  return(e1 - e2)
}
