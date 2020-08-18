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
                           plot_margin = margin(30, 30, 30, 30)
){
  thm <- ggplot2::theme_minimal(base_family = base_font, base_size = base_size)

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
