(A <- matrix(c(3, 2, 1, 2, -1, 7, -1, 5, -1), nrow = 3))
(e <- eigen(A))
(lambda <- e$values)
(E <- e$vectors)

lambda * diag(3)
A %*% E[,1] / lambda[1] # Вот оно, значит:
round(A %*% E[,1] / lambda[1], 6) == round(E[,1], 6)
lambda * diag(3) # Это и есть диагональная матрица
E # В базисе из собственных векторов

#############
(A <- matrix(c(3, 2, 2, 1, 2, 1, -2, -2, -1), nrow = 3))
(e <- eigen(A))
(lambda <- e$values)
(E <- e$vectors)

lambda * diag(3)
A %*% E[,1] / lambda[1]
round(A %*% E[,1] / lambda[1], 6) == round(E[,1], 6)
m <- 1
cbind(
  EV = E[,m],
  `phi(EV)` = (A %*% E[,m])[,1],
  rate = (A %*% E[,m] / E[,m])[,1],
  lambda = lambda[m]
)

(Ea <- apply(E, 2, \(x) x / x[[1]]))

A %*% Ea[,1] / lambda[1]

m <- 3
cbind(
  EV = Ea[,m],
  `phi(EV)` = (A %*% Ea[,m])[,1],
  rate = (A %*% Ea[,m] / Ea[,m])[,1],
  lambda = lambda[m]
)
lambda * diag(3)

#############
# NEW BASIS #
#############
library(geometry)
(v1 <- c(1, 2))
(v2 <- c(2, -1))

# Check if v1 and v2 orthogonal
v1 %*% v2
t(v1) %*% v2 # same