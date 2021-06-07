#' Get a named vector of colours
#'
#' @param palette 
#'
#' @return
#' @export
#'
#' @examples
get_ash <- function(palette=c("blood","lymphgen","coo","hmrn","b-cell","clinical")){
  raw_cols <- ggsci_db$"ash"[[palette]]
  return(raw_cols)
}

#' ASH Journal Color Palettes
#'
#' Color palettes inspired by plots in journals published by
#' ASH such as \emph{Blood}.
#'
#' @param palette Palette type.
#' Currently there is one available option: \code{"blood"}
#' (15-color palette used by the American Society of Hematology's \emph{Blood Journal}).
#' @param alpha Transparency level, a real number in (0, 1].
#' See \code{alpha} in \code{\link[grDevices]{rgb}} for details.
#'
#' @export pal_ash
#'
#' @importFrom grDevices col2rgb rgb
#' @importFrom scales manual_pal
#'
#' @author Ryan Morin <\email{rdmorin@sfu.ca}> |
#'
#' @examples
#' library("scales")
#' show_col(pal_ash("blood")(15))
#' show_col(pal_ash("blood", alpha = 0.6)(15))
pal_ash <- function(palette = c("blood","lymphgen"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L | alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- ggsci_db$"ash"[[palette]]
  
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  new_pal = manual_pal(unname(alpha_cols))
  
  return(new_pal)
}

#' NPG Journal Color Scales
#'
#' See \code{\link{pal_npg}} for details.
#'
#' @inheritParams pal_ash
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#'
#' @export scale_color_ash
#'
#' @importFrom ggplot2 discrete_scale
#'
#' @author Nan Xiao <\email{me@@nanx.me}> |
#' <\href{https://nanx.me}{https://nanx.me}>
#'
#' @rdname scale_ash
#'
#' @examples
#' library("ggplot2")
#' data("diamonds")
#' 
#' ggplot(
#'   subset(diamonds, carat >= 2.2),
#'   aes(x = table, y = price, colour = cut)
#' ) +
#'   geom_point(alpha = 0.7) +
#'   geom_smooth(method = "loess", alpha = 0.1, size = 1, span = 1) +
#'   theme_bw() + scale_color_npg()
#' 
#' ggplot(
#'   subset(diamonds, carat > 2.2 & depth > 55 & depth < 70),
#'   aes(x = depth, fill = cut)
#' ) +
#'   geom_histogram(colour = "black", binwidth = 1, position = "dodge") +
#'   theme_bw() + scale_fill_npg()
scale_color_ash<- function(palette = c("blood","lymphgen"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("colour", "ash", pal_ash(palette, alpha), ...)
}

#' @export scale_colour_ash
#' @rdname scale_ash
scale_colour_ash <- scale_color_ash

#' @export scale_fill_ash
#' @importFrom ggplot2 discrete_scale
#' @rdname scale_ash
scale_fill_ash <- function(palette = c("blood","lymphgen"), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("fill", "ash", pal_ash(palette, alpha), ...)
}
