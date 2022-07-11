if (!require(polynom)) {
  install.packages('polynom', type = 'source', INSTALL_opts = '--byte-compile')
}
if (!require(polyMatrix)) {
  install.packages('polyMatrix', type = 'source', INSTALL_opts = '--byte-compile')
}
library(polynom)
library(polyMatrix)

(A <- matrix(c(4, 1, 1, -3, 2, 1, -3, 1, 2), nrow = 3))
det(A)
(e <- eigen(A))
(d <- charpolynom(A))
(lambdas <- solve(d))
setequal(zapsmall(e$values), zapsmall(lambdas))
setdiff( zapsmall(e$values), zapsmall(lambdas))

(A <- matrix(c(2, -1, 1, -1, 2, -1, 0, 0, 1), nrow = 3))
det(A)

(A <- matrix(c(5, 0, 0, -1, 4, -1, -1, -1, 4), nrow = 3))
det(A)