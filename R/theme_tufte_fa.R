#' A version Tufte theme from [ggthemes] with Persian Fonts and rtl support
#'
#' @param base_font base font family
#' @param base_size base font size
#' @param plot_title_font title font family
#' @param plot_title_size font size
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
theme_tufte_fa <-  function(base_font = "Samim FD",
                                               base_size = 12.5,
                                               plot_title_font = "Samim Medium FD",
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
                                               legend_font = "Samim FD",
                                               legend_font_size = 10,
                                               legend_color = 'gray40',
                                               legend_title_size = 12,
                                               legend_position = 'top',
                                               axis_text_size = base_size,
                                               axis_title_font = subtitle_font,
                                               axis_title_size = 12,
                                               axis_title_face = "plain",
                                               axis_title_just = "rt",
                                               plot_margin = margin(30, 30, 30, 30)
){
  thm <- ggthemes::theme_tufte(base_family = base_font, base_size = base_size)
  thm <-
    thm + theme(
      text = element_text(family = base_font),
      plot.title = element_text(family =  plot_title_font, hjust = 1,
                                margin=margin(t = plot_title_margin, b=plot_title_margin)),
      plot.subtitle = element_text(
        family =  plot_title_font,
        hjust = 1,
        margin=margin(b=subtitle_margin),
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

  thm

}
