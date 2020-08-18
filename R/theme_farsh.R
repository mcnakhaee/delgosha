#' Title
#'https://www.roozrang.com/%d8%b7%d8%b1%d8%a7%d8%ad%db%8c-%d9%87%d9%88%db%8c%d8%aa-%d8%a8%d8%b5%d8%b1%db%8c-%d8%af%d8%a7%db%8c%d9%86%d8%a7%d9%85%db%8c%da%a9-%d9%85%d9%88%d8%b2%d9%87-%d9%81%d8%b1%d8%b4-%d8%aa%d9%87%d8%b1%d8%a7/
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
#' @thmurn
#' @export
#'
#' @examples
theme_farsh_fa <- function(base_font = "Vazir FD",
                           base_size = 11.5,
                           plot_title_font = "Vazir Black FD",
                           plot_title_size = 25,
                           plot_title_face = "bold",
                           plot_title_margin = 10,
                           subtitle_font = base_font,
                           subtitle_size = 20,
                           subtitle_face = "plain",
                           subtitle_margin = 15,
                           strip_text_font = base_font,
                           strip_text_size = 12,
                           strip_text_face = "plain",
                           caption_font = base_font,
                           caption_size = 9,
                           caption_face = "italic",
                           caption_margin = 10,
                           legend_font = "Vazir FD",
                           legend_font_size = 10,
                           legend_title_size = 12,
                           legend_position = 'top',
                           axis_text_size = base_size,
                           axis_title_font = subtitle_font,
                           axis_title_size = 9,
                           axis_title_face = "plain",
                           axis_title_just = "rt",
                           plot_margin = margin(30, 30, 30, 30),
                           grid_col = "#cccccc",
                           grid = TRUE,
                           axis_col = "#cccccc",
                           axis = FALSE,
                           ticks = FALSE) {
  ## Mimal Theme
  thm <-
    ggplot2::theme_minimal(base_family = base_font, base_size = base_size)


 text_col <- '#774936'
 grid_col <- '#eddcd2'

  # Legends
  thm <- thm + theme(
    legend.text = element_text(family = legend_font, size = legend_font_size, color = text_col),
    legend.title = element_text(family = legend_font, size = legend_title_size, color = text_col),
    legend.position = legend_position)



  # Background
  thm <- thm + theme(panel.background = element_rect(fill = '#F4F1DE'),
                     plot.background = element_rect(fill ='#F4F1DE'))

  # Title, Subtitle and Caption
  thm <-
    thm + theme(text = element_text( color = text_col),
      plot.title = element_text(family =  plot_title_font, hjust = 1, margin=margin(b=plot_title_margin) , color = text_col),
                plot.subtitle = element_text(family =  subtitle_font, hjust = 1, margin=margin(b=subtitle_margin) , face = subtitle_face,color = text_col ),
                plot.caption = element_text(family =  caption_font, hjust = 0,face = caption_face,color = text_col )
    )


  thm <- thm + theme(strip.text = element_text(color = text_col,size = strip_text_size),
                     panel.spacing.x = unit(2, "lines"),
                     panel.spacing.y = unit(2, "lines"))

  thm <- thm + theme(axis.text =  element_text(color = text_col)) +
    theme(line = element_line(color = text_col)) +
    theme(axis.ticks = element_line(color = text_col))


  thm <- thm + theme(plot.margin = plot_margin )

  thm <- thm +  theme(rect =  element_rect( color = '#F4F1DE'))

  if (inherits(grid, "character") | grid == TRUE) {

    thm <- thm + theme(panel.grid=element_line(color=grid_col, size=0.01))
    thm <- thm + theme(panel.grid.major=element_line(color=grid_col, size=0.01))
    thm <- thm + theme(panel.grid.minor=element_line(color=grid_col, size=0.01))

    if (inherits(grid, "character")) {
      if (regexpr("X", grid)[1] < 0) thm <- thm + theme(panel.grid.major.x=element_blank())
      if (regexpr("Y", grid)[1] < 0) thm <- thm + theme(panel.grid.major.y=element_blank())
      if (regexpr("x", grid)[1] < 0) thm <- thm + theme(panel.grid.minor.x=element_blank())
      if (regexpr("y", grid)[1] < 0) thm <- thm + theme(panel.grid.minor.y=element_blank())
    }

  } else {
    thm <- thm + theme(panel.grid=element_blank())
  }


  ggplot2::update_geom_defaults("text", list(colour = text_col,family = base_font ))




thm


}

