# Reproducibility Guide

## Overview

This document explains how to reproduce the simulation example used in the PhD research project *Permutation-Based Multiple Testing under Dependence*.

The software generates dependent Gaussian observations, introduces signals, computes two-sided Gaussian p-values, and generates sign-flipped reference statistics.

## Software Requirements

- R (the current example uses base R only).
- Git for version control.
- A computer capable of running R simulations.

No additional R packages are required for the current example.

## Running the Simulation

From the root directory of the repository, execute:

```bash
Rscript code/permutation/PermutedA.R
```

The example uses the following parameters:

| Parameter | Value | Description |
|---|---|---|
| `m` | 10 | Number of hypotheses |
| `pi` | 0.2 | Proportion of non-null hypotheses |
| `n` | 50 | Number of observations |
| `rho` | 0.3 | Dependence parameter |
| `B` | 1000 | Number of sign-flipped replicates |
| `seed` | 123 | Random seed |

The expected output is a matrix with 10 rows and 1001 columns.

## Statistical Model

The observations are generated according to

\[
D_{ij}=\sqrt{1-\rho^2}X_{ij}+\rho Z_j,
\]

where \(X_{ij}\) and \(Z_j\) are independent standard normal random variables.

Under this model, the correlation between distinct rows is \(\rho^2\).

The script introduces signals into a randomly selected subset of hypotheses.

## Reproducibility Testing

Run:

```bash
Rscript tests/test_permutation.R
```

The tests verify that:

1. The output dimensions are correct.
2. All computed values are finite and lie between 0 and 1.
3. Repeated runs with the same random seed produce identical results.

A successful execution displays:

```text
All reproducibility tests passed!
```

## Limitations

The current tests verify basic computational reproducibility, not the theoretical validity of the multiple testing procedure.

The sign-flipped columns contain Gaussian p-value statistics computed from transformed observations, not permutation-rank p-values.

For stronger reproducibility across computing environments, future versions should record the R version, random-number generator settings, and relevant software dependencies.