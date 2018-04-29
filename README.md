






`uint8` - An 8-bit unsigned integer type for R
-------------------------------------------------

* An 8-bit unsigned integer type for R based upon the `raw` type.
* Each value is stored in a single byte (whereas `integer` values in R are stored in 4 bytes), 
  so there can be memory savings.
* Stores only values 0-255
* No `NA`, `NaN`, or `Inf` allowed
* Basic arithmethic


Rationale
-------------------------------------------------

* An experiment to see if there's more useful data type for working with 8-bit data 
  (without dropping down to the level of `Rcpp`).
* The aim is to have similar behaviour to the `uint8_t` type in C.


Installation
------------------------------------------------------------------------------


```r
devtools::install_github('coolbutuseless/uint8')
```


Features
------------------------------------------------------------------------------

* Each `uint8` is stored in a single byte (but there is, of course, overhead
  associated with atomic vector metainfo). 
* Using `uint8` can result in 25% of the memory use of R `integer` values. e.g.
    * `pryr::object_size(1:10000)` => 40 kB
    * `pryr::object_size(uint8(1:10000))` => 10.2 kB
* Specific S3 methods written for:
    * `uint8()` (data creation)
    * `+`, `-`, `*`, `/`
    * `%%`, `%/%`
    * `:` (sequence creation)
    * `any()`, `all()`, `as.bitstring()`, `abs()`, `order()`, `sign()`
* A lot of things come for free because of the use of the built-in R `raw` type
    * `as.integer()`, `as.numeric()`, `as.character()`
    * `%in%`
    * `<`, `<=`, `==`, `!=`, `>=`, `>`


Limitations
------------------------------------------------------------------------------

* Can't use a `uint8` for subscripts (similar limitation in the `bit64` package for `integer64`)
* The `:` operator only dispatches on its first argument, so `uint8(1):10` will work, 
  but `1:uint8(10)` won't.
  
  
Comparison to `raw`
-------------------------------------------------

* `raw` allows for 8-bit data, but doesn't support any arithmetic operators
* `uint8` support basic arithmetic
* `raw` accepts values outside the range 0-255 by setting them to zero
* `uint8` accepts values outside the range 0-255 by calculating the value modulo 256. 
  e.g. `uint8(-10)` is `246`
* `raw` accepts  `NA`, `NaN`, `Inf` by setting them to zero.  
* `uint8` disallows `NA`, `NaN` and `Inf`


Examples
------------------------------------------------------------------------------


```r
b02 <- uint8(  2)
b0a <- uint8( 10)
bff <- uint8(255)


# Addition is modulo 256
bff + b0a   # (255 + 10) %% 256 => 9
```

```
## [1] 9
```

```r
# Division result trucated to integer value
b0a/b02   # 10/2 => 5
```

```
## [1] 5
```

```r
bff/b0a   # 255/10 => 25.5 => 25
```

```
## [1] 25
```

```r
# exponentiation is modulo 256
b02 ^ b0a   # 2^10 => 1024.    1024 %% 256 => 0
```

```
## [1] 0
```

```r
# initialisation is modulo 256
uint8(seq(200, 300, 5))
```

```
##  [1] 200 205 210 215 220 225 230 235 240 245 250 255   4   9  14  19  24
## [18]  29  34  39  44
```



Future
------------------------------------------------------------------------------

* Flesh out the supported functions as needed
* Investigate if there's any point to an actual `Rcpp` backend for speed or accuracy of behaviour.
















