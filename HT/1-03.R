if (!require(polynom)) {
  install.packages('polynom', type = 'source', INSTALL_opts = '--byte-compile')
}
if (!require(polyMatrix)) {
  install.packages('polyMatrix', type = 'source', INSTALL_opts = '--byte-compile')
}
library(polynom)
library(polyMatrix)
normalise <- function(x) {x / sqrt(sum(x^2))}

(A <- matrix(c(4, 1, 1, -3, 2, 1, -3, 1, 2), nrow = 3))
det(A)
(e <- eigen(A))
(d <- charpolynom(A))
(lambdas <- solve(d))
(d_prime <- polynomial(c(3, -4, 1)))
solve(d_prime)
setequal(zapsmall(e$values), zapsmall(lambdas))
setdiff( zapsmall(e$values), zapsmall(lambdas))

(A <- matrix(c(2, -1, 1, -1, 2, -1, 0, 0, 1), nrow = 3))
det(A)
# …
A %*% c(1, -1, 1) # Cool

(A <- matrix(c(5, 0, 0, -1, 4, -1, -1, -1, 4), nrow = 3))
det(A)

(A <- matrix(c(7, -2, 0, -4, 5, 0, -2, -2, 9), nrow = 3))

(A <- matrix(c(3, 1, 1, 0, 2, -1, 0, -1, 2), nrow = 3))

q_1 <- c(2, 1, 1)
q_2 <- c(0, -2, 2)
q_3 <- c(0, 1, 1)
A %*% q_3
(Q <- cbind(q_1, q_2, q_3))
(Q_Inv <- solve(Q))
zapsmall(Q %*% Q_Inv)
(L <- diag(e$values))
Q %*% L
(E <- Q %*% L %*% Q_Inv)
E == A
E - A

A %*% Q
Q %*% L
