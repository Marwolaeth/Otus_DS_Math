le_solve <- function(X, b = rep(0, nrow(X))) {
  x <- solve(X, b)
  x
}
embellish <- function(m) {
  m / min(abs(m), na.rm = TRUE)
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

(A <- matrix(c(7, -2, 0, -4, 5, 0, -2, -2, 9), nrow = 3))

(p <- polynomial(c(5, -1)))
p^2
(q <- polynomial(c(-5, 1)))
q^2
p^2 == q^2

(p <- polynomial(c(9, -1)))
p^2
(q <- polynomial(c(-9, 1)))
q^2
p^2 == q^2
p*q

v <- c(2, -1, 0)
A %*% v
(A %*% v) == (v * 9) # Cool
v <- c(-2, 1, 0)
A %*% v
(A %*% v) == (v * 9) # that's
v2 <- c(1, 2, 5)
v2 %*% v # Fucking orthogonal
A %*% v2
(A %*% v2) == (v2 * 9) # No!!!
A %*% e$vectors[,2]
(A %*% e$vectors[,2]) == (e$vectors[,2] * 9)

v2 <- c(-1, -2, 5)
v2 %*% v # Fucking orthogonal
A %*% v2
(A %*% v2) == (v2 * 9)

apply(e$vectors, 2, embellish)
rm(list = ls(pattern = '^v'))

q_1 <- c(2, -1, 0)
q_2 <- c(-1, -2, 5)
q_3 <- c(1, 1, 0)
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

pracma::cross(q_1, q_3)
