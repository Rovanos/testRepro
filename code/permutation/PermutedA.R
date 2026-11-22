Generate_Data_and_permut_p_values <- function(
    m,
    pi,
    n,
    rho,
    B,
    seed = NULL
) {
  if (!is.null(seed)) set.seed(seed)
  
  # -------------------------
  # Generate data
  # -------------------------
  
  X <- matrix(rnorm(m * n), m, n)
  Z <- rnorm(n)
  D <- sqrt(1 - rho^2) * X + rho * matrix(Z, m, n, byrow = TRUE)
  
  # Add signal
  Tset <- sample(seq_len(m), size = ceiling(pi * m))
  mu <- 2 * rho * sqrt(log(length(Tset)))
  D[Tset, ] <- D[Tset, ] + mu
  
  # -------------------------
  # Observed p-values
  # -------------------------
  
  T_obs <- rowMeans(D)
  sd_T <- 1 / sqrt(n)
  p_obs <- 2 * pnorm(-abs(T_obs), sd = sd_T)
  
  # -------------------------
  # Permutation p-values
  # -------------------------
  
  p_perm <- matrix(NA, m, B)
  
  for (b in seq_len(B)) {
    sigma <- sample(c(-1, 1), n, replace = TRUE)
    D_perm <- D * matrix(sigma, m, n, byrow = TRUE)
    T_perm <- rowMeans(D_perm)
    p_perm[, b] <- 2 * pnorm(-abs(T_perm), sd = sd_T)
  }
  
  # -------------------------
  # Combine
  # -------------------------
  
  p_all <- cbind(p_obs, p_perm)
  
  return(p_all)
}


p_all <- Generate_Data_and_permut_p_values(
  m = 10,
  pi = 0.2,
  n = 50,
  rho = 0.3,
  B = 1000,
  seed = 123
)

dim(p_all)