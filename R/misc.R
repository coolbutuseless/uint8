


#-----------------------------------------------------------------------------
#' Misc ops
#'
#' @name misc
#-----------------------------------------------------------------------------
NULL


#' @rdname misc
#' @export
any.uint8 <- function(e1, ...) { any(as.logical(e1)) }


#' @rdname misc
#' @export
all.uint8 <- function(e1, ...) { all(as.logical(e1)) }


#' @rdname misc
#' @export
abs.uint8 <- function(e1) { e1 }


#' @rdname misc
#' @export
sign.uint8 <- function(e1) { rep(1L, length(e1)) }


#' @rdname misc
#' @export
sum.uint8 <- function(e1, ...) { uint8(sum(as.integer(e1)))}


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
'[.uint8' <- function(e1, ...) { uint8(as.integer(e1)[...])}