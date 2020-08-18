
#' Title
#'
#' @param base_font
#' @param base_size
#' @param plot_title_font
#' @param plot_title_size
#' @param plot_title_face
#' @param plot_title_margin
#' @param subtitle_font
#' @param subtitle_size
#' @param subtitle_face
#' @param subtitle_margin
#' @param strip_text_font
#' @param strip_text_size
#' @param strip_text_face
#' @param caption_font
#' @param caption_size
#' @param caption_face
#' @param caption_margin
#' @param legend_font
#' @param legend_font_size
#' @param legend_color
#' @param legend_title_size
#' @param legend_position
#' @param axis_text_size
#' @param axis_title_font
#' @param axis_title_size
#' @param axis_title_face
#' @param axis_title_just
#' @param plot_margin
#' @param grid_col
#' @param grid
#' @param axis_col
#' @param axis
#' @param ticks
#'
#' @return
#' @export
#'
#' @examples
theme_aljazeera <- function(base_font = "Aljazeera",
                           base_size = 12.5,
                           plot_title_font = "Aljazeera",
                           plot_title_size = 30,
                           plot_title_face = "bold",
                           plot_title_margin = 10,
                           subtitle_font = base_font,
                           subtitle_size = 12,
                           subtitle_face = "plain",
                           subtitle_margin = 15,
                           strip_text_font = base_font,
                           strip_text_size = 12,
                           strip_text_face = "plain",
                           caption_font = base_font,
                           caption_size = 9,
                           caption_face = "italic",
                           caption_margin = 10,
                           legend_font = "Aljazeera",
                           legend_font_size = 10,
                           legend_color = 'gray40',
                           legend_title_size = 12,
                           legend_position = 'top',
                           axis_text_size = base_size,
                           axis_title_font = subtitle_font,
                           axis_title_size = 12,
                           axis_title_face = "plain",
                           axis_title_just = "rt",
                           plot_margin = margin(30, 30, 30, 30),
                           grid_col = "#cccccc",
                           grid = TRUE,
                           axis_col = "#cccccc",
                           axis = FALSE,
                           ticks = FALSE) {
  def_fore <- '#D0952F'
  thm <-
    ggplot2::theme_minimal(base_family = base_font, base_size = base_size)

  thm <- thm + theme(panel.grid.major.x = element_blank())

  # Legend
  thm <- thm + theme(
    legend.text = element_text(
      family = legend_font,
      size = legend_font_size,
      color = legend_color
    ),
    legend.title = element_text(
      family = legend_font,
      size = legend_title_size,
      color = legend_color
    ),
    legend.position = legend_position,
  )


  # Title, Subtitle and Caption
  thm <-
    thm + theme(
      plot.title = element_text(family =  plot_title_font, hjust = 1,
                                margin=margin(b=plot_title_margin),
                                face = plot_title_face),
      plot.subtitle = element_text(
        family =  plot_title_font,
        hjust = 1,
        margin=margin(b=subtitle_margin),
        face = subtitle_face,
        color = 'gray50'
      ),
      plot.caption = element_text(
        family =  plot_title_font,
        hjust = 0,
        face = caption_face,
        color = 'gray50'
      )
    )

  ggplot2::update_geom_defaults("point", list(colour = def_fore))
  ggplot2::update_geom_defaults("line", list(colour = def_fore))
  ggplot2::update_geom_defaults("area", list(colour = def_fore, fill = def_fore))
  ggplot2::update_geom_defaults("rect", list(colour = def_fore, fill = def_fore))
  ggplot2::update_geom_defaults("density", list(colour = def_fore, fill =
                                                  def_fore))
  ggplot2::update_geom_defaults("bar", list(colour = def_fore, fill = def_fore))
  ggplot2::update_geom_defaults("col", list(colour = def_fore, fill = def_fore))
  ggplot2::update_geom_defaults("text", list(colour = 'gray50', family = base_font))

  thm <- thm + theme(strip.text = element_text(size = strip_text_size),
                     panel.spacing.x = unit(2, "lines"),
                     panel.spacing.y = unit(2, "lines"))
  if (ticks == FALSE) {
    thm <- thm + theme(
      axis.ticks = element_blank(),
      axis.ticks.x = element_blank(),
      axis.ticks.y = element_blank()
    )
  } else {
    thm <-
      thm + theme(
        axis.ticks = element_line(size = 0.15, color = "white"),
        axis.ticks.x = element_line(size = 0.15, color = "white"),
        axis.ticks.y = element_line(size = 0.15, color = "white"),
        axis.ticks.length = grid::unit(4, "pt")
      )
  }

  thm <- thm + theme(panel.spacing = plot_margin )

  thm

}
