
#-----------------------------------------------------------------------------
#' Arithmetic
#'
#' @param e1 an atomic vector of class 'uint8'
#' @param e2 an atomic vector of class 'uint8'
#'
#' @name arith
#-----------------------------------------------------------------------------
NULL

#' @rdname arith
#' @export
'+.uint8' <- function(e1, e2) {
  as.uint8(do.call('+', list(as.integer(e1), as.integer(e2))))
}

#' @rdname arith
#' @export
'-.uint8' <- function(e1, e2) {
  as.uint8(do.call('-', list(as.integer(e1), as.integer(e2))))
}

#' @rdname arith
#' @export
'*.uint8' <- function(e1, e2) {
  as.uint8(do.call('*', list(as.integer(e1), as.integer(e2))))
}

#' @rdname arith
#' @export
'/.uint8' <- function(e1, e2) {
  as.uint8(do.call('/', list(as.integer(e1), as.integer(e2))))
}

#' @rdname arith
#' @export
'%%.uint8' <- function(e1, e2) {
  as.uint8(do.call('%%', list(as.integer(e1), as.integer(e2))))
}

#' @rdname arith
#' @export
'%/%.uint8' <- function(e1, e2) {
  as.uint8(do.call('%/%', list(as.integer(e1), as.integer(e2))))
}

#' @rdname arith
#' @export
'^.uint8' <- function(e1, e2) {
  as.uint8(do.call('^', list(as.integer(e1), as.integer(e2))))
}
