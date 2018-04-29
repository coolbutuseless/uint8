


#-----------------------------------------------------------------------------
#' Misc ops
#'
#' @param x  an atomic vector of class 'uint8'
#' @param e1 an atomic vector of class 'uint8'
#' @param na.rm logical. Should missing values be removed?
#' @param ... arguments passed to other methods
#'
#' @name misc
#-----------------------------------------------------------------------------
NULL


#' @rdname misc
#' @export
any.uint8 <- function(..., na.rm=FALSE) { any(as.logical(...)) }


#' @rdname misc
#' @export
all.uint8 <- function(..., na.rm=FALSE) { all(as.logical(...)) }


#' @rdname misc
#' @export
abs.uint8 <- function(x) { x }


#' @rdname misc
#' @export
sign.uint8 <- function(x) { rep(1L, length(x)) }


#' @rdname misc
#' @export
sum.uint8 <- function(..., na.rm=FALSE) { uint8(sum(as.integer(...)))}


#' @rdname misc
#' @export
as.bitstring <- function(e1) {
  f <- function(x) {
    paste(unlist(strsplit(as.character(rev(rawToBits(as.raw(x)))), ''))[seq.int(2, 16, 2)], collapse='')
  }
  vapply(e1, f, FUN.VALUE = character(1))
}


#' @rdname misc
#' @export
'[.uint8' <- function(x, ...) { uint8(as.integer(x)[...])}