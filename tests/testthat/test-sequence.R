context("sequence")

test_that("sequence works", {
  b1 <- as.uint8(10)
  b2 <- as.uint8(25)
  s1 <- b1:b2
  expect_s3_class(s1, 'uint8')
  expect_length(s1, 16)
  expect_identical(as.integer(s1), 10:25)
})


test_that("order works", {
  b <- as.uint8(c(10, 30, 20))
  o <- order(b)
  expect_type(o, 'integer')
  expect_identical(o, c(1L, 3L, 2L))
})