

#-----------------------------------------------------------------------------
#' Create a uint8 vector
#'
#' The input is first converted to integer and this result (modulu 256) is converted
#' to R's built-in \code{raw} datatype.
#'
#' @param x Numeric vector. This will be converted to integer, and then modulo 256
#'          to bring it in the range 0-255. NA, NaN and Inf values will be
#'          silently converted to 0, as is the default for \code{raw}.
#'
#' @return Vector of \code{uint8} values.
#' @export
#-----------------------------------------------------------------------------
uint8 <- function(x) {
  x <- as.raw(as.integer(x) %% 256)
  attr(x, 'class') <- 'uint8'
  x
}


#-----------------------------------------------------------------------------
#' Print a \code{uint8} vector in a friendly integer manner
#'
#' @param x \code{uint8} vector
#' @param ... for compatibility with default print method.
#'
#' @return Invisibly return original vector.
#-----------------------------------------------------------------------------
print.uint8 <- function(x, ...) {
  print(as.integer(x))
  invisible(x)
}