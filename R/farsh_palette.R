farsh_palette <- c(
  "#495D2A", ## green
  "#8B1B1A",  ## red
  "#2F5A87"  ## blue
)

#' @title The farsh palette
#' @description The farsh palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname farsh_pal
#' @export
#' @examples
#' library(scales)
#' show_col(farsh_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

farsh_pal <- function(n,
                         type = c("discrete", "continuous"),
                         reverse = FALSE){
  farsh <- farsh_palette

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
#' @rdname farsh_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_farsh()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_farsh <- function(n, type = "discrete",
                                 reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "farsh", farsh_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = farsh_pal(n = n, type = type,
                                                         reverse = reverse)(8))
  }
}

#' @title scale_colour_farsh
#' @rdname farsh_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_farsh()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_farsh <- scale_color_farsh

#' @title scale_fill_farsh
#' @rdname farsh_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_farsh()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_farsh <- function(n, type = "discrete",
                                reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "farsh", farsh_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = farsh_pal(n = n, type = type,
                                                        reverse = reverse)(8))
  }
}

