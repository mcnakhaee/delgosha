farshchian_khalse_palette <- c(
  '#1F241D',
  '#CFD7CC',
  '#8BACA9',
  '#767A40',
  '#594028'
)

#' @title The farsh palette
#' @description The farsh palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname farshchian_khalse_pal
#' @export
#' @examples
#' library(scales)
#' show_col(farshchian_khalse_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

farshchian_khalse_pal <- function(n,
                      type = c("discrete", "continuous"),
                      reverse = FALSE){
  farsh <- farshchian_khalse_palette

  if (reverse == TRUE) {
    farsh <- rev(farsh)
  }

  if (missing(n)) {
    n <- length(farsh)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(farsh)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(farsh)}!"))
  }

  farsh <- switch(type,
                  continuous = grDevices::colorRampPalette(farsh)(n),
                  discrete = farsh[1:n])

  farsh <- scales::manual_pal(farsh)

  return(farsh)
}

#' @title scale_color_farsh
#' @rdname farshchian_khalse_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_farsh()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_farshchian <- function(n, type = "discrete",
                              reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "farsh", farshchian_khalse_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = farshchian_khalse_pal(n = n, type = type,
                                                      reverse = reverse)(8))
  }
}

#' @title scale_colour_farsh
#' @rdname farshchian_khalse_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_farsh()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_farshchian_khalse<- farshchian_khalse_pal

#' @title scale_fill_farsh
#' @rdname farshchian_khalse_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_farsh()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_farshchian_khalse<- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "farsh", farshchian_khalse_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = farshchian_khalse_pal(n = n, type = type,
                                                     reverse = reverse)(8))
  }
}

