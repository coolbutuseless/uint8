## ----setup, include = FALSE----------------------------------------------
suppressPackageStartupMessages({
  library(uint8)
})

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
b1 <- uint8(10)
b2 <- uint8(20)
b3 <- uint8(50)

b1 + b2

b3 * 5 + b2  #  270 %% 256 == 14

b3/b1

b3/b2

b1 - b2  # -10  => 246

