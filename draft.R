le_solve <- function(X, b = rep(0, nrow(X))) {
  x <- solve(X, b)
  x
}

(A <- matrix(c(2, -1, 1, -1, 2, -1, 0, 0, 1), nrow = 3))
det(A - 3*diag(3))
le_solve(A - 3*diag(3)) # Crush


(A <- matrix(c(5, 0, 0, -1, 4, -1, -1, -1, 4), nrow = 3))
(d <- charpolynom(A))
(p1 <- polynomial(c(-5, 1)))
(p2 <- polynomial(c(-3, 1)))
p1 * p2
(p3 <- polynomial(c(5, -1)))
p3 * p1 * p2
(d_prime <- p3 * p1 * p2)
d_prime == d
