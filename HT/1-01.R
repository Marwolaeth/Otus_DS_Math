devtools::install_github('rstudio/rmarkdown', build = TRUE)
devtools::install_github('yihui/tinytex', build = TRUE)
tinytex::install_tinytex()
tinytex:::install_yihui_pkgs()

tinytex::parse_packages('HT/1-03.log')

(M <- matrix(c(5, 3, 1, -5, -1, 7, 4, 3, -1), nrow = 3))
(b <- c(0, 0, 0))
solve(M, b)

(M <- matrix(c(-4, 1, 1, 3), nrow = 2))
(b <- c(1, -6))
solve(M, b)
solve(M, b) * 13

(M <- matrix(c(3, 2, 1, 2, -1, 7, -1, 5, -1), nrow = 3))
(b <- c(4, 23, 5))
solve(M, b)
# 13!

(M <- matrix(c(2, -4, 1, 3, 1, 7, 5, 2, 14), nrow = 3))
(b <- c(1, -7, -5))
solve(M, b)
solve(M, b) * 29
