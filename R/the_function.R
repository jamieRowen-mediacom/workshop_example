#' @importFrom magrittr %>%
#' @importFrom rlang !!
#' @export
the_function = function(df, group, col, val) {
  group = rlang::enquo(group)
  col = rlang::enquo(col)

  result = df %>%
    dplyr::group_by(!!group) %>%
    dplyr::summarise(answer = sum(!!col * val - 3))
  return(result)
}

# data(diamonds, package = "ggplot2")
#
# the_function(diamonds, color, price, 10)
