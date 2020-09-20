#' A minimal ggplot2 theme with Persian fonts and rtl support
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
#'
#' @return
#' @export
#'
#' @examples
theme_minimal_fa <- function(base_font = "Nahid FD",
                             base_size = 12.5,
                             text_col = '#8e8e93',
                             plot_title_font = "Nahid FD",
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
                             legend_font = "Nahid FD",
                             legend_font_size = 10,
                             legend_color = 'gray40',
                             legend_title_size = 12,
                             legend_position = 'top',
                             axis_margin = 10,
                             axis_text_size = base_size,
                             axis_title_font = subtitle_font,
                             axis_title_size = 12,
                             plot_margin = margin(30, 30, 30, 30)) {
  thm <-
    ggplot2::theme_minimal(base_family = base_font, base_size = base_size,color = text_col)

  thm <-
    thm + theme(
      text = element_text(family = base_font),
      plot.title = element_text(
        family =  plot_title_font,
        hjust = 1,
        margin = margin(t = plot_title_margin,
                        b = plot_title_margin),
        size = plot_title_size,
        face = plot_title_face,
        color = text_col
      ),
      plot.subtitle = element_text(
        family =  subtitle_font,
        hjust = 1,
        margin = margin(b = subtitle_margin),
        face = subtitle_face,
        size = subtitle_size,
        color = text_col
      ),
      plot.caption = element_text(
        family =  caption_font,
        hjust = 0,
        face = caption_face,
        size = caption_size,
        margin = margin(t = caption_margin,
                        b = caption_margin),

        color = text_col
      ),
      legend.text = element_text(
        family = legend_font,
        size = legend_font_size,
        color = legend_color,

      ),
      legend.title = element_text(size = legend_title_size),
      legend.position = legend_position
    )


  thm <-
    thm +  theme(
      axis.title.y = element_text(family = axis_title_font,
                                  size = axis_title_size,
                                  margin = margin(
        r = axis_margin
      )),
      axis.title.x = element_text(family = axis_title_font,
                                  size = axis_title_size , margin = margin(
        t = axis_margin
      ))
    )

  thm <- thm + theme(plot.margin = plot_margin)

  thm

}
