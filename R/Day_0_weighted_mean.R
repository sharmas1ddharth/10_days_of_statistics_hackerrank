

#
# Complete the 'weightedMean' function below.
#
# The function accepts following parameters:
#  1. INTEGER_ARRAY X
#  2. INTEGER_ARRAY W
#
weightedMean <- function(X, W) {
  # Write your code here
  ans <- noquote(sprintf("%1.1f", weighted.mean(X, W)))
  cat(ans)
  
}

stdin <- file('stdin')
open(stdin)

n <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))

vals <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
vals <- as.integer(vals)

weights <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
weights <- as.integer(weights)

weightedMean(vals, weights)

close(stdin)
