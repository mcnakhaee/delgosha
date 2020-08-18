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
#'
#' @return
#' @export
#'
#' @examples
theme_minimal_fa <- function(base_font = "Nahid FD",
                             base_size = 12.5,
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
                             axis_text_size = base_size,
                             axis_title_font = subtitle_font,
                             axis_title_size = 12,
                             axis_title_face = "plain",
                             axis_title_just = "rt",
                             plot_margin = margin(30, 30, 30, 30)) {
  thm <-
    ggplot2::theme_minimal(base_family = base_font, base_size = base_size)

  thm <-
    thm + theme(
      text = element_text(family = base_font),
      plot.title = element_text(
        family =  plot_title_font,
        hjust = 1,
        margin = margin(t = plot_title_margin, b =
                          plot_title_margin)
      ),
      plot.subtitle = element_text(
        family =  plot_title_font,
        hjust = 1,
        margin = margin(b = subtitle_margin),
        face = subtitle_face,
        color = '#8e8e93'
      ),
      plot.caption = element_text(
        family =  plot_title_font,
        hjust = 0,
        face = caption_face,
        color = '#8e8e93'
      )
    )


  thm <-
    thm +  theme(
      axis.title.y = element_text(margin = margin(
        t = 0,
        r = 10,
        b = 0,
        l = 0
      )),
      axis.title.x = element_text(margin = margin(
        t = 10,
        r = 0,
        b = 0,
        l = 0
      ))
    )
  thm

}
