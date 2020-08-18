#' @title Import "Hamshahri" font (deprecated)
#' @description Imports Hamshahri
#' @details import_*() functions taken from hrbrthemes.
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_hamshahri
#' @export
#' @importFrom extrafont font_import
import_hamshahri <- function() {
  hamshahri_font_dir <- system.file("fonts", "Hamshahri", package = "delgosha")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = hamshahri_font_dir, prompt = FALSE)))
  # if (.Platform$OS.type == "windows") {
  #   myFont <- "A Zangar_Hamshahri"
  #   windowsFonts(Zangar  = myFont)
  # }
  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      hamshahri_font_dir
    )
  )
}



import_vazir <- function() {
  vazir_font_dir <- system.file("fonts", "vazir-font", package = "delgosha")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = vazir_font_dir, prompt = FALSE)))
  # if (.Platform$OS.type == "windows") {
  #   myFont <- "Vazir FD"
  #   windowsFonts(`Vazir FD` = myFont)
  #   myFont <- "Vazir Black FD"
  #   windowsFonts( `Vazir Black FD`  = myFont)
  # }
  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      vazir_font_dir
    )
  )
}


import_yekan <- function() {
  yekan_font_dir <- system.file("fonts", "Yekan", package = "delgosha")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = yekan_font_dir, prompt = FALSE)))
  # if (.Platform$OS.type == "windows") {
  #   myFont <- "2  Yekan"
  #   windowsFonts(`2  Yekan` = myFont)
  # }
  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      yekan_font_dir
    )
  )
}


import_aljazeera <- function() {
  aljazeera_font_dir <- system.file("fonts", "Aljazeera", package = "delgosha")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = aljazeera_font_dir, prompt = FALSE)))
  # if (.Platform$OS.type == "windows") {
  #   myFont <- "2  Yekan"
  #   windowsFonts(`2  Yekan` = myFont)
  # }
  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      aljazeera_font_dir
    )
  )
}


import_nika <- function() {
  nika_font_dir <- system.file("fonts", "Aljazeera", package = "delgosha")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = nika_font_dir, prompt = FALSE)))
  # if (.Platform$OS.type == "windows") {
  #   myFont <- "2  Yekan"
  #   windowsFonts(`2  Yekan` = myFont)
  # }
  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      nika_font_dir
    )
  )
}




#' Title
#'
#' @return
#' @export
#'
#' @examples
import_nahid <- function() {
  nahid_font_dir <- system.file("fonts", "Nahid", package = "delgosha")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = nahid_font_dir, prompt = FALSE)))
  if (.Platform$OS.type == "windows") {
    myFont <- "Nahid FD"
    windowsFonts(`Nahid FD` = myFont)
  }
  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      nahid_font_dir
    )
  )
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
import_samim <- function() {
  samim_font_dir <- system.file("fonts", "Samim", package = "delgosha")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = samim_font_dir, prompt = FALSE)))
  if (.Platform$OS.type == "windows") {
    myFont <- "Samim FD"
    windowsFonts(`Samim Medium FD` = myFont)
    myFont <- "Samim Medium FD"
    windowsFonts(`Samim Medium FD` = myFont)
  }
  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      samim_font_dir
    )
  )
}
