

#-----------------------------------------------------------------------------
#' Creates objects of type 'uint8'
#'
#' The input is first converted to integer and this result (modulu 256) is converted
#' to R's built-in \code{raw} datatype.
#'
#' @param x Numeric vector. \code{x} will be converted to integer, and then modulo 256
#'          to bring it in the range 0-255. NA, NaN and Inf values will cause an
#'          error.
#'
#' @return Vector of \code{uint8} values.
#' @export
#-----------------------------------------------------------------------------
as.uint8 <- function(x) {
  i <- suppressWarnings(as.integer(x))
  if (any(is.na(i))) {
    stop("Non-integer values in:", paste(x, collapse=", "))
  }
  x <- as.raw(i %% 256)
  attr(x, 'class') <- 'uint8'
  x
}



#-----------------------------------------------------------------------------
#' Create a uint8 vector of the given size
#'
#' @param length A non-negative integer specifying the desired length.
#'               Double values will be coerced to integer: supplying an argument
#'               of length other than one is an error.
#'
#' @return A \code{uint8} vector of the specified length
#' @export
#-----------------------------------------------------------------------------
uint8 <- function(length=0) {
  x <- as.raw(integer(length))
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
#' @export
#-----------------------------------------------------------------------------
print.uint8 <- function(x, ...) {
  print(as.integer(x))
  invisible(x)
}