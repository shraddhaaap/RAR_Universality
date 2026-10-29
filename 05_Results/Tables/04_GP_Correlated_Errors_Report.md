# Notebook 04 — GP Correlated Errors Report

*Run 20261022T124247Z (2026-10-22T12:42:47Z UTC); builds on Notebook 03 run 20261022T095735Z. This file exists only if the notebook ran.*

## Verified inputs
* 153 SPARC galaxies, 3164 likelihood points, identical to Notebook 03 (positivity rule reproduced; 4 documented exclusions).
* Regression test: zero-GP likelihood vs Notebook 03 saved Model C log-likelihoods: max |diff| = 1.18e-12 (10 draws, 153 galaxies).
* Covariance: 612 matrices checked at extreme hyperparameters; all positive-definite without jitter: True.
* Beam sizes are not available for SPARC; correlation-length bounds use radial spacing and extent only.

## PILOT (validation only)
* D_base: converged=False, max R-hat 1.0054, min ESS bulk/tail 1208/1200, divergences 1, 10.6 min
* D_bounds_narrow: converged=False, max R-hat 1.0036, min ESS bulk/tail 929/1179, divergences 9, 8.9 min
* D_bounds_wide: converged=False, max R-hat 1.0058, min ESS bulk/tail 450/626, divergences 2, 10.4 min
* D_matern32: converged=False, max R-hat 1.0052, min ESS bulk/tail 1786/1531, divergences 4, 9.0 min
* D_complete_pooling: converged=True, max R-hat 1.0056, min ESS bulk/tail 1806/1669, divergences 0, 8.2 min
* D_decomposition: converged=True, max R-hat 1.0046, min ESS bulk/tail 1493/1224, divergences 0, 7.1 min
* E_base: converged=False, max R-hat 1.0041, min ESS bulk/tail 923/850, divergences 33, 9.6 min

## FULL
**Full Models D and E were not run in this session; no full-sample GP results exist.**

## Intrinsic scatter: independent vs correlated errors
FULL: comparison not available.
PILOT D_base: sigma_int median 0.0018 vs C 0.0604; reduction supported (95% intervals separated) [model not converged: do not interpret]
PILOT E_base: sigma_int median 0.0019 vs C 0.0604; reduction supported (95% intervals separated) [model not converged: do not interpret]

## Identifiability flags (preliminary; formal test in Notebook 06)
PILOT D_base: none; PILOT D_bounds_narrow: none; PILOT D_bounds_wide: none; PILOT D_matern32: none; PILOT D_complete_pooling: none; PILOT D_decomposition: none; PILOT E_base: none

## Notes
* Model C values are read from Notebook 03 (not refitted). Notebook 03's plain galaxy-level PSIS-LOO had many Pareto k > 0.7 for Model C; this notebook uses integrated galaxy-level LOO for C, D and E.
* Benchmark: 75.1 ms per full-data gradient on cpu; estimated 6.48 h per full model (rough).

## Checks
31 checks: 0 FAIL, 2 WARN.
