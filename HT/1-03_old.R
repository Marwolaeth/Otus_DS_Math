if (!require(polynom)) {
  install.packages('polynom', type = 'source', INSTALL_opts = '--byte-compile')
}
if (!require(rationalfun)) {
  install.packages('rationalfun', type = 'source', INSTALL_opts = '--byte-compile')
}
if (!require(polyMatrix)) {
  install.packages('polyMatrix', type = 'source', INSTALL_opts = '--byte-compile')
}
gcd <- function(x, y) {
  if (sum(y > 1e-16) == 0) {
    x
  }
  else {
    y[y == 0] <- x[y == 0]
    Recall(y, x%%y)
  }
}
gcd <- compiler::cmpfun(gcd, options = list(optimize = 3))
compiler::disassemble(gcd)

reduce <- function(r) {
  cd <- 1 / Reduce(gcd, lapply(r, as.numeric))
  cd <- rationalfun(numer = cd, denom = cd)
  r * cd
}
reduce <- compiler::cmpfun(reduce, options = list(optimize = 3))

ev <- function(r) as.numeric(r$numerator / r$denominator)
ev <- compiler::cmpfun(ev, options = list(optimize = 3))

(A <- matrix(c(4, 1, 1, -3, 2, 1, -3, 1, 2), nrow = 3))
det(A)
eigen(A)
(u <- Re(eigen(A)$vectors[,3]))
(A %*% u) / u

(A <- matrix(c(2, -1, 1, -1, 2, -1, 0, 0, 1), nrow = 3))
det(A)

(lambdas <- c(4, 3, 1))
(A_1 <- A - (lambdas[3] * diag(3)))
det(A_1)

(A <- matrix(c(5, 0, 0, -1, 4, -1, -1, -1, 4), nrow = 3))
det(A)

library(polynom)
library(rationalfun)
print.polynomial <- function(p) {cat(as.character(p, decreasing = TRUE))}
(d <- polynomial(coef = c(-12, 19, -8, 1)))
methods(class = 'polynomial')
solve(d)
Im(solve(d))

## Проверка маво решения
### Одного из его моментов
parenthesis_match <- function(a, b = 1, c = 1) {
  c((a - b + c), a - (b + c))
}
parenthesis_match(3)
## Вывод: ошибка

## Решение в R
A # Такая матрица
(a <- polynomial(c(-4, 1))) # \lambda - 4
(b <- polynomial(c(-2, 1)))
(c <- b)
library(polyMatrix)
(d <- charpolynom(A))
solve(d)
solve(polynomial(c(-1, 1)))
solve(polynomial(c(18, -7, 1)))

(a <- coef(d)[length(coef(d))-1] / coef(d)[length(coef(d))])
(Q <- rationalfun(-11, 9))
Q^3
reduce(Q^3)
gcd(1331, 729)
(R <- rationalfun(290, 54))
(R <- reduce(R))

(S <- reduce(Q^3 - R^2))
(S <- rationalfun(-92, 3))
reduce(S)

(phi <- (1/3) * asinh(abs(ev(R)) / sqrt(abs(ev(Q^3)))))
(x <- -2*sign(ev(R)) * sqrt(abs(ev(Q))) * sinh(phi) - (a/3))
# УУУУуууууу