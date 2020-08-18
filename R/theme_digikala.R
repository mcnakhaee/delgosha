theme_digikala <- function(base_font = "2  Yekan",
                           base_size = 12.5,
                           plot_title_font = "2  Yekan",
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
                           strip_text_margin = 10,
                           caption_font = base_font,
                           caption_size = 9,
                           caption_face = "italic",
                           caption_margin = 10,
                           legend_font = "2  Yekan",
                           legend_font_size = 10,
                           legend_color = '#76787A',
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
  def_fore <- '#19D9FA'
  text_color <- '#76787A'
  axis_line_color <- '#C9C9C9'
  axis_text_color <- '#717171'

  thm <-
    ggplot2::theme_minimal(base_family = base_font, base_size = base_size)

  thm <- thm + theme(legend.position = 'top')
  thm <-
    thm + theme(
      text = element_text(color = text_color),
      plot.title = element_text(family =  plot_title_font, hjust = 1,
                                margin=margin(t =plot_title_margin,b=plot_title_margin),
                                face = plot_title_face,
                                color = text_color),
      plot.subtitle = element_text(
        family =  plot_title_font,
        hjust = 1,
        margin=margin(b=subtitle_margin),
        face = subtitle_face,
        color = 'gray60'
      ),
      plot.caption = element_text(
        family =  plot_title_font,
        hjust = 0,
        face = caption_face,
        color = 'gray70'
      ),
      axis.text = element_text(color = axis_text_color)

    )


  thm <- thm +theme(axis.line=element_line(color=axis_line_color, size=0.15),
                    panel.grid = element_blank())

  thm <- thm + theme(strip.text = element_text(color = text_color,size = strip_text_size, margin =margin(t =strip_text_margin, b=strip_text_margin)),
                     panel.spacing.x = unit(2, "lines"),
                     panel.spacing.y = unit(2, "lines"),
                     panel.spacing = plot_margin)


  ggplot2::update_geom_defaults("point", list(colour = def_fore))
  ggplot2::update_geom_defaults("line", list(colour = def_fore))
  ggplot2::update_geom_defaults("area", list(colour = def_fore, fill = def_fore))
  ggplot2::update_geom_defaults("rect", list(colour = def_fore, fill = def_fore))
  ggplot2::update_geom_defaults("density", list(colour = def_fore, fill =
                                                  def_fore))
  ggplot2::update_geom_defaults("bar", list(colour = def_fore, fill = def_fore))
  ggplot2::update_geom_defaults("col", list(colour = def_fore, fill = def_fore))
  ggplot2::update_geom_defaults("text", list(colour = text_color, family = base_font))

thm
}
