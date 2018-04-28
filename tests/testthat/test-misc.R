context("misc")

test_that("misc functions work", {

  expect_true(any(uint8(1:5)))
  expect_false(any(uint8(c(0, 0, 0))))

  expect_true(all(uint8(1:5)))
  expect_false(all(uint8(c(0, 0, 1))))

  expect_identical(uint8(1:5), abs(uint8(1:5)))

  expect_identical(sign(uint8(1:5)), rep(1L, 5))

  expect_identical(as.bitstring(uint8(c(1, 32))), c('00000001', '00100000'))


  b <- uint8(1:10)
  res <- b[4:6]
  expect_identical(res, uint8(4:6))


})
