## ----setup, include = FALSE----------------------------------------------
suppressPackageStartupMessages({
  library(uint8)
})

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
b02 <- as.uint8(  2)
b0a <- as.uint8( 10)
bff <- as.uint8(255)


# Addition is modulo 256
bff + b0a   # (255 + 10) %% 256 => 9


# Division result trucated to integer value
b0a/b02   # 10/2 => 5
bff/b0a   # 255/10 => 25.5 => 25


# exponentiation is modulo 256
b02 ^ b0a   # 2^10 => 1024.    1024 %% 256 => 0

# initialisation is modulo 256
as.uint8(seq(200, 300, 5))

