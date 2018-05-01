context("creation")

test_that("uint8 creation works", {
  b <- as.uint8(255)
  expect_s3_class(b, 'uint8')
  expect_length(b, 1)
  expect_identical(as.integer(b), c(255L))

  b <- as.uint8(c(1, 2, 3))
  expect_s3_class(b, 'uint8')
  expect_length(b, 3)
  expect_identical(as.integer(b), c(1L, 2L, 3L))
})


test_that("bad init value", {
  expect_error(as.uint8(NA)  , "Non-integer")
  expect_error(as.uint8(NaN) , "Non-integer")
  expect_error(as.uint8(Inf) , "Non-integer")
  expect_error(as.uint8(-Inf), "Non-integer")
})
