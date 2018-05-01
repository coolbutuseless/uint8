context("arithmetic")

test_that("arithmetic with only uint8 works", {
  b1 <- as.uint8(10)
  b2 <- as.uint8(255)
  b3 <- as.uint8(3)

  expect_identical(as.integer(b1 + b3), 13L)
  expect_identical(as.integer(b1 - b3), 7L)
  expect_identical(as.integer(b3 - b1), 249L)
  expect_identical(as.integer(b3 + b2), 2L)

  expect_identical(as.integer(b1/b3), 3L)
  expect_identical(as.integer(b2/b1), 25L)
  expect_identical(as.integer(b3/b1), 0L)

  expect_identical(as.integer(b1 * b2), 2550L %% 256L)


  expect_identical(as.integer(b2 %% b1 ), 5L)
  expect_identical(as.integer(b1 %% b2 ), 10L)
  expect_identical(as.integer(b2 %/% b1), 25L)
  expect_identical(as.integer(b1 %/% b2), 0L)

  expect_s3_class(b1 + b2  , 'uint8')
  expect_s3_class(b1 - b2  , 'uint8')
  expect_s3_class(b1 * b2  , 'uint8')
  expect_s3_class(b1 / b2  , 'uint8')
  expect_s3_class(b1 %% b2 , 'uint8')
  expect_s3_class(b1 %/% b2, 'uint8')
})
