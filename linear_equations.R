(M <- matrix(c(-4, 1, 1, 3), nrow = 2))
(b <- c(1, -6))

(x <- solve(M, b))
x * 13 # сук

le_solve <- function(X, b = rep(0, nrow(X))) {
  x <- solve(X, b)
  x
}

le_solve(
  matrix(c(3, 2, 1, 2, -1, 7, -1, 5, -1), nrow = 3),
  c(4, 23, 5)
)

x <- le_solve(
  matrix(c(2, -4, 1, 3, 1, 7, 5, 2, 14), nrow = 3),
  c(1, -7, -5)
)
x
x * 29 # Kurwa!
