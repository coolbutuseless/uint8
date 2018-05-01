

# Stealing an idea from 'int64' package on how to create
# s3 methods for ':' and then override for 'uint8'
#
# Can't figure out how to document ':'  in roxygen without
# an "--as-cran" complaint when checking.
#
# 'int64' also notes this problem in 'man/bit64s3.rd'


#-----------------------------------------------------------------------------
#' Sequence
#'
#' Only dispatches on first argument.
#'
#' @param from from
#' @param to to
#'
#' @return sequence
#' @name sequence
#-----------------------------------------------------------------------------
NULL


#' @rdname sequence
#' @export
":" <- function(from,to) UseMethod(":")


#' @rdname sequence
#' @export
":.default" <- function(from,to) base::":"(from,to)


#' @rdname sequence
#' @export
":.uint8" <- function(from, to) {
  as.uint8(seq.int(from=as.integer(from), to=as.integer(to)))
}





#-----------------------------------------------------------------------------
#' Ordering permutation
#'
#' @param x uint8 atomic vector
#' @param ... other arguments passed to builtin 'order()'
#'
#' @return integer atomic vector
#' @name order
#-----------------------------------------------------------------------------
NULL

#' @rdname order
#' @export
"order" <- function(...) UseMethod("order")


#' @rdname order
#' @export
"order.default" <- function(...) base::"order"(...)


#' @rdname order
#' @export
order.uint8 <- function(x, ...) {
  order(as.integer(x), ...)
}
