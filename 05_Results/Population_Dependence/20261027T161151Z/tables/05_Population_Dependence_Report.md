# Notebook 05 — Population Dependence (SPARC only) — Report

*Run 20261027T161151Z (2026-10-27T16:11:51Z UTC); Notebook 03 run 20261022T095735Z. This file exists only if the notebook ran.*

## Setup
* Model C error model (Notebook 03): independent errors with distance, inclination and Upsilon* sampled; intercept priors identical to Notebook 03.
* theta_i = theta_0 + theta_1 z_i for log10 a0, beta, ln sigma_int, ln tau; z = standardised logMbar, logSB0, fgas.
* Covariate correlations: {"logMbar/logSB0": 0.66, "logMbar/fgas": -0.77, "logSB0/fgas": -0.74}; VIF {"logMbar": 2.56, "logSB0": 2.32, "fgas": 3.21}.
* Regression (zero slopes vs Notebook 03 saved Model C): max |diff| 2.37e-12.
* Declared test family: 12 slopes (one-at-a-time fits); Bonferroni per-test alpha 0.0042 (|z| > 2.87).

## Convergence
* baseline: converged=True; max R-hat 1.0051; ESS 3812/1836; divergences 0; 6.3 min
* one_logMbar: converged=True; max R-hat 1.0038; ESS 1514/661; divergences 0; 9.0 min
* one_logSB0: converged=True; max R-hat 1.0042; ESS 2767/1626; divergences 0; 8.7 min
* one_fgas: converged=True; max R-hat 1.0053; ESS 3034/1090; divergences 0; 8.8 min
* joint: converged=True; max R-hat 1.0035; ESS 1164/1633; divergences 0; 14.8 min
* one_logMbar_priorx2: converged=True; max R-hat 1.0045; ESS 1280/1738; divergences 0; 8.9 min
* one_logSB0_priorx2: converged=True; max R-hat 1.0043; ESS 2850/1857; divergences 0; 8.7 min
* one_fgas_priorx2: converged=True; max R-hat 1.0040; ESS 3215/1857; divergences 0; 8.7 min

## Primary result (declared family)
**Supported dependences:** 8 of 12.
* beta vs logMbar: -0.0565 ± 0.0101 per SD (-0.0597 per dex Mbar); 95% [-0.0757, -0.0361]; P(>0) = 0.000 -> SUPPORTED
* log_sigma_int vs logMbar: -0.1836 ± 0.0304 per SD (-0.1940 ln per dex Mbar); 95% [-0.2420, -0.1244]; P(>0) = 0.000 -> SUPPORTED
* log_tau vs logMbar: -0.3457 ± 0.0914 per SD (-0.3654 ln per dex Mbar); 95% [-0.5367, -0.1780]; P(>0) = 0.000 -> SUPPORTED
* log10_a0 vs logSB0: +0.0941 ± 0.0316 per SD (+0.1370 dex per dex SB0); 95% [0.0327, 0.1571]; P(>0) = 0.999 -> SUPPORTED
* beta vs logSB0: -0.0328 ± 0.0072 per SD (-0.0478 per dex SB0); 95% [-0.0466, -0.0184]; P(>0) = 0.000 -> SUPPORTED
* log_sigma_int vs logSB0: -0.1439 ± 0.0305 per SD (-0.2095 ln per dex SB0); 95% [-0.2034, -0.0825]; P(>0) = 0.000 -> SUPPORTED
* log10_a0 vs fgas: -0.0917 ± 0.0278 per SD (-0.3388 dex per unit fgas); 95% [-0.1441, -0.0351]; P(>0) = 0.000 -> SUPPORTED
* log_sigma_int vs fgas: +0.2364 ± 0.0273 per SD (+0.8735 ln per unit fgas); 95% [0.1813, 0.2888]; P(>0) = 1.000 -> SUPPORTED

**Borderline (the two estimates of the extreme interval disagree):**
* log_tau vs logSB0: -0.2703 ± 0.0893 per SD (-0.3936 ln per dex SB0); 95% [-0.4468, -0.0976]; P(>0) = 0.002 -> borderline

All slopes: `tables/05_slopes_all_fits.csv`. Prior sensitivity (slope prior SD x2): `tables/05_slope_prior_sensitivity.csv`.

## Predictive comparison (integrated galaxy-level LOO)
* baseline: elpd 3350.4 (SE 403.4); galaxies with Pareto k>0.7: 8
* one_logMbar: elpd 3390.4 (SE 401.1); galaxies with Pareto k>0.7: 14; delta vs baseline +40.0 (SE 50.1)
* one_logSB0: elpd 3378.5 (SE 401.3); galaxies with Pareto k>0.7: 13; delta vs baseline +28.2 (SE 41.1)
* one_fgas: elpd 3367.4 (SE 410.5); galaxies with Pareto k>0.7: 11; delta vs baseline +17.0 (SE 48.0)
* joint: elpd 3404.2 (SE 409.0); galaxies with Pareto k>0.7: 21; delta vs baseline +53.8 (SE 62.5)

## Caveats
* SPARC only; survey effects cannot be separated (cross-survey gate not passed).
* Independent-error model. Under correlated errors (Notebook 04) sigma_int collapses toward zero, so the sigma_int dependence is specific to Model C.
* Covariates are catalogue-based (fixed distance, fiducial Upsilon* = 0.5) and strongly correlated; the joint fit is secondary.
* Detection limits for these slopes come from injection-recovery (Notebook 06). A null result here is not evidence of universality until those limits are known.

## Checks
40 checks: 0 FAIL, 1 WARN.
