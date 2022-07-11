library(Matrix)

(A <- matrix(c(7, 1, -6, 1, -3, 2, -1, 5, -2), nrow = 3))
(B <- matrix(c(-9, 0, 0, -6, -5, 5, 2, 5, -7), nrow = 3))
det(A)
det(B)
rankMatrix(A, method = 'qrLINPACK')
rankMatrix(B)
(AB <- A %*% B)
det(AB)
rankMatrix(AB, method = 'qrLINPACK')

(A <- matrix(c(-9, -8, -5, 5, -3, 8, 2, 4, -8), nrow = 3))
(B <- matrix(c(1, 7, -2, -5, 3, 4, 1, 1, 7), nrow = 3))
det(A)
det(B)
rankMatrix(A, method = 'qrLINPACK')
rankMatrix(B)
(AB <- A %*% B)
det(AB)
rankMatrix(AB, method = 'qrLINPACK')

(A <- matrix(c(0, -2, 4, -4, 2, 6, -1, 7, 9), nrow = 3))
(b <- c(2, 9, 0))
A %*% b

(B <- matrix(c(-3, 2, 3, 7, -1, 7, 4, 2, -3), nrow = 3))
det(B)

(B <- matrix(c(-1, 0, 2, -10, -7, 4, -3, -3, 2), nrow = 3, byrow = TRUE))
det(B)

(B <- matrix(c(4, -5, -7, -2, 0, 2, 1, -1, 7), nrow = 3))
det(B)

(B <- matrix(
  c(
    7, -4, -10, 3, 1,
    7, -9, 2, -6, -2,
    -3, -8, 3, -7, -7,
    7, 8, -4, 2, -8,
    0, 5, -12, 9, 3
  ),
  byrow = TRUE,
  nrow = 5
))
det(B)
