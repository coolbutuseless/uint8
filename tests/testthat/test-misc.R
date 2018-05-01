context("misc")

test_that("misc functions work", {

  expect_true(any(as.uint8(1:5)))
  expect_false(any(as.uint8(c(0, 0, 0))))

  expect_true(all(as.uint8(1:5)))
  expect_false(all(as.uint8(c(0, 0, 1))))

  expect_identical(as.uint8(1:5), abs(as.uint8(1:5)))

  expect_identical(sign(as.uint8(1:5)), rep(1L, 5))

  expect_identical(as.bitstring(as.uint8(c(1, 32))), c('00000001', '00100000'))


  b <- as.uint8(1:10)
  res <- b[4:6]
  expect_identical(res, as.uint8(4:6))


})
