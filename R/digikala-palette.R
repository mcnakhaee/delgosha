digikala_palette <- c(
  "#FB112D",  ## red
  "#28D4F2"  ## blue
)

#' @title The digikala palette
#' @description The digikala palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname digikala_pal
#' @export
#' @examples
#' library(scales)
#' show_col(digikala_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

digikala_pal <- function(n,
                      type = c("discrete", "continuous"),
                      reverse = FALSE){
  digikala <- digikala_palette

  if (reverse == TRUE) {
    digikala <- rev(digikala)
  }

  if (missing(n)) {
    n <- length(digikala)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(digikala)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(digikala)}!"))
  }

  digikala <- switch(type,
                  continuous = grDevices::colorRampPalette(digikala)(n),
                  discrete = digikala[1:n])

  digikala <- scales::manual_pal(digikala)

  return(digikala)
}

#' @title scale_color_digikala
#' @rdname digikala_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_digikala()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_digikala <- function(n, type = "discrete",
                              reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "digikala", digikala_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = digikala_pal(n = n, type = type,
                                                      reverse = reverse)(8))
  }
}

#' @title scale_colour_digikala
#' @rdname digikala_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_digikala()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_digikala <- scale_color_digikala

#' @title scale_fill_digikala
#' @rdname digikala_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_digikala()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_digikala <- function(n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "digikala", digikala_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = digikala_pal(n = n, type = type,
                                                     reverse = reverse)(8))
  }
}

