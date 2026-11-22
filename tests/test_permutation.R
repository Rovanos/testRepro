
# Reproducibility tests for PermutedA.R

source("code/permutation/PermutedA.R")

# Simulation settings
m <- 10
pi <- 0.2
n <- 50
rho <- 0.3
B <- 100
seed <- 123

# Run the simulation twice
result1 <- Generate_Data_and_permut_p_values(
  m = m, pi = pi, n = n,
  rho = rho, B = B, seed = seed
)

result2 <- Generate_Data_and_permut_p_values(
  m = m, pi = pi, n = n,
  rho = rho, B = B, seed = seed
)

# Test 1: Output dimensions
stopifnot(all(dim(result1) == c(m, B + 1)))

# Test 2: P-values are between 0 and 1
stopifnot(all(is.finite(result1)))
stopifnot(all(result1 >= 0 & result1 <= 1))

# Test 3: Same seed gives identical results
stopifnot(identical(result1, result2))

cat("All reproducibility tests passed!\n")
