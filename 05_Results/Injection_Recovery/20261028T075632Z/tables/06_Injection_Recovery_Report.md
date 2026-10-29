# Notebook 06 — Injection–Recovery (Parts A and B) — Report

*Run 20261028T075632Z (2026-10-28T07:56:32Z UTC). Notebook 03 run 20261022T095735Z; Notebook 04 Model D posterior 20261026T083032Z; Notebook 05 run 20261027T161151Z. This file exists only if the notebook ran.*

## Setup
* Mocks: SPARC radii, errors, baryonic components and catalogue nuisances; true D, i, Upsilon* drawn from the model priors. Fitted with Notebook 05's model and decision rule (|z| > 2.87).
* A1 truth: full Model D posterior medians (per-galaxy A_i, l_i; tau 0.0476; sigma_int 0.0005). Correlation of ln A_i with the covariates: {"logMbar": 0.62, "logSB0": 0.42, "fgas": -0.47}.
* A2/B truth: Notebook 03 Model C medians (sigma_int 0.0356, tau 0.1220); no correlated noise.
* Mock fits: 2 chains x (500 + 750); usable if R-hat < 1.05, ESS >= 100.0 (slopes, intercepts), 0 divergences.
* Usable fractions: [{'scenario': 'A1_null_correlated', 'fits': 48, 'usable_fraction': 0.938}, {'scenario': 'A2_null_white', 'fits': 18, 'usable_fraction': 1.0}, {'scenario': 'B_inject_0.5x', 'fits': 6, 'usable_fraction': 1.0}, {'scenario': 'B_inject_1.0x', 'fits': 6, 'usable_fraction': 1.0}]

## Part A — family-wise false-positive rate (nominal 5%)
* A1_null_correlated: 15/15 mocks with >= 1 'supported' slope = 1.00 (95% 0.80-1.00)
* A2_null_white: 0/6 mocks with >= 1 'supported' slope = 0.00 (95% 0.00-0.39)

## Real Notebook 05 slopes against the correlated-noise null (A1) — the decisive comparison
* beta vs fgas: real +0.0185; null -0.0264 ± 0.0305; noise-calibrated z = +1.43; empirical p = 0.250 -> NOT supported after calibration
* beta vs logMbar: real -0.0565; null +0.0274 ± 0.0304; noise-calibrated z = -2.61; empirical p < 0.062 -> NOT supported after calibration
* beta vs logSB0: real -0.0328; null +0.0163 ± 0.0323; noise-calibrated z = -1.48; empirical p = 0.125 -> NOT supported after calibration
* log10_a0 vs fgas: real -0.0917; null +0.0840 ± 0.1112; noise-calibrated z = -1.53; empirical p = 0.125 -> NOT supported after calibration
* log10_a0 vs logMbar: real +0.1056; null -0.0889 ± 0.0879; noise-calibrated z = +2.02; empirical p < 0.062 -> NOT supported after calibration
* log10_a0 vs logSB0: real +0.0941; null -0.0497 ± 0.0964; noise-calibrated z = +1.42; empirical p = 0.125 -> NOT supported after calibration
* log_sigma_int vs fgas: real +0.2364; null +0.3185 ± 0.0547; noise-calibrated z = -1.34; empirical p = 0.188 -> NOT supported after calibration
* log_sigma_int vs logMbar: real -0.1836; null -0.3840 ± 0.0738; noise-calibrated z = +2.51; empirical p < 0.062 -> NOT supported after calibration
* log_sigma_int vs logSB0: real -0.1439; null -0.2550 ± 0.1265; noise-calibrated z = +0.85; empirical p = 0.312 -> NOT supported after calibration
* log_tau vs fgas: real +0.0130; null +0.0873 ± 0.1492; noise-calibrated z = -0.42; empirical p = 0.688 -> NOT supported after calibration
* log_tau vs logMbar: real -0.3457; null -0.1809 ± 0.1379; noise-calibrated z = -1.00; empirical p = 0.250 -> NOT supported after calibration
* log_tau vs logSB0: real -0.2703; null -0.1672 ± 0.1509; noise-calibrated z = -0.59; empirical p = 0.500 -> NOT supported after calibration

## Real slopes against the white-noise null (A2, calibration)
* beta vs fgas: real +0.0185; null +0.0010 ± 0.0052; noise-calibrated z = +1.90; empirical p < 0.143 -> NOT supported after calibration
* beta vs logMbar: real -0.0565; null -0.0004 ± 0.0050; noise-calibrated z = -4.96; empirical p < 0.143 -> still supported
* beta vs logSB0: real -0.0328; null +0.0002 ± 0.0075; noise-calibrated z = -3.19; empirical p < 0.143 -> still supported
* log10_a0 vs fgas: real -0.0917; null +0.0076 ± 0.0288; noise-calibrated z = -2.48; empirical p < 0.143 -> NOT supported after calibration
* log10_a0 vs logMbar: real +0.1056; null -0.0168 ± 0.0301; noise-calibrated z = +2.46; empirical p < 0.143 -> NOT supported after calibration
* log10_a0 vs logSB0: real +0.0941; null -0.0064 ± 0.0318; noise-calibrated z = +2.24; empirical p < 0.143 -> NOT supported after calibration
* log_sigma_int vs fgas: real +0.2364; null +0.0032 ± 0.0230; noise-calibrated z = +6.54; empirical p < 0.143 -> still supported
* log_sigma_int vs logMbar: real -0.1836; null +0.0050 ± 0.0261; noise-calibrated z = -4.70; empirical p < 0.143 -> still supported
* log_sigma_int vs logSB0: real -0.1439; null +0.0010 ± 0.0200; noise-calibrated z = -3.97; empirical p < 0.143 -> still supported
* log_tau vs fgas: real +0.0130; null -0.0186 ± 0.0495; noise-calibrated z = +0.30; empirical p = 0.571 -> NOT supported after calibration
* log_tau vs logMbar: real -0.3457; null -0.0079 ± 0.0555; noise-calibrated z = -3.16; empirical p < 0.143 -> still supported
* log_tau vs logSB0: real -0.2703; null +0.0224 ± 0.0400; noise-calibrated z = -2.99; empirical p < 0.143 -> still supported

## Part B — recovery
* beta vs fgas at 0.5x: injected +0.0093, recovered +0.0064, bias -0.38 SD, coverage 1.00, power 0.00 (n=2)
* beta vs fgas at 1.0x: injected +0.0185, recovered +0.0180, bias -0.07 SD, coverage 1.00, power 0.00 (n=2)
* log10_a0 vs fgas at 0.5x: injected -0.0458, recovered -0.0585, bias -0.45 SD, coverage 1.00, power 0.00 (n=2)
* log10_a0 vs fgas at 1.0x: injected -0.0917, recovered -0.0773, bias +0.46 SD, coverage 1.00, power 0.00 (n=2)
* log_sigma_int vs fgas at 0.5x: injected +0.1182, recovered +0.1132, bias -0.18 SD, coverage 1.00, power 1.00 (n=2)
* log_sigma_int vs fgas at 1.0x: injected +0.2364, recovered +0.2514, bias +0.72 SD, coverage 0.50, power 1.00 (n=2)
* log_tau vs fgas at 0.5x: injected +0.0065, recovered -0.0337, bias -0.43 SD, coverage 1.00, power 0.00 (n=2)
* log_tau vs fgas at 1.0x: injected +0.0130, recovered +0.0060, bias -0.05 SD, coverage 1.00, power 0.00 (n=2)
* beta vs logMbar at 0.5x: injected -0.0282, recovered -0.0359, bias -0.91 SD, coverage 1.00, power 1.00 (n=2)
* beta vs logMbar at 1.0x: injected -0.0565, recovered -0.0519, bias +0.58 SD, coverage 0.50, power 1.00 (n=2)
* log10_a0 vs logMbar at 0.5x: injected +0.0528, recovered +0.0544, bias +0.06 SD, coverage 1.00, power 0.00 (n=2)
* log10_a0 vs logMbar at 1.0x: injected +0.1056, recovered +0.0831, bias -0.65 SD, coverage 0.50, power 0.50 (n=2)
* log_sigma_int vs logMbar at 0.5x: injected -0.0918, recovered -0.1240, bias -1.12 SD, coverage 1.00, power 1.00 (n=2)
* log_sigma_int vs logMbar at 1.0x: injected -0.1836, recovered -0.1818, bias +0.07 SD, coverage 1.00, power 1.00 (n=2)
* log_tau vs logMbar at 0.5x: injected -0.1728, recovered +0.0028, bias +1.87 SD, coverage 0.50, power 0.00 (n=2)
* log_tau vs logMbar at 1.0x: injected -0.3457, recovered -0.2085, bias +1.62 SD, coverage 0.50, power 0.50 (n=2)
* beta vs logSB0 at 0.5x: injected -0.0164, recovered -0.0150, bias +0.17 SD, coverage 1.00, power 0.00 (n=2)
* beta vs logSB0 at 1.0x: injected -0.0328, recovered -0.0392, bias -0.87 SD, coverage 1.00, power 1.00 (n=2)
* log10_a0 vs logSB0 at 0.5x: injected +0.0470, recovered +0.0282, bias -0.60 SD, coverage 1.00, power 0.00 (n=2)
* log10_a0 vs logSB0 at 1.0x: injected +0.0941, recovered +0.1240, bias +0.96 SD, coverage 1.00, power 1.00 (n=2)
* log_sigma_int vs logSB0 at 0.5x: injected -0.0720, recovered -0.0665, bias +0.21 SD, coverage 1.00, power 0.50 (n=2)
* log_sigma_int vs logSB0 at 1.0x: injected -0.1439, recovered -0.1553, bias -0.44 SD, coverage 0.50, power 1.00 (n=2)
* log_tau vs logSB0 at 0.5x: injected -0.1351, recovered -0.0502, bias +0.99 SD, coverage 1.00, power 0.00 (n=2)
* log_tau vs logSB0 at 1.0x: injected -0.2703, recovered -0.1581, bias +0.99 SD, coverage 0.50, power 0.50 (n=2)

## Interpretation rules (declared)
* A real slope is **robust to correlated noise** only if it stays beyond the Bonferroni threshold after calibration against the A1 null **and** lies beyond the bulk of the A1 null mocks.
* If the A1 null itself produces 'supported' slopes in the same direction, the Notebook 05 result for that slope is **explainable by galaxy-dependent correlated noise** and must not be reported as a physical dependence.
* With 16 A1 mocks the empirical p-value cannot go below 0.059; more mocks are needed for stronger statements (set RAR_N_NULL_CORR and resume).
* The A1 truth uses Model D medians, which had unconverged elements for one galaxy and for tau/mu_u (Notebook 04); A_i and l_i are therefore a realistic, not exact, noise model.
* Part C (identifiability of sigma_int vs correlated noise with GP fits) is not in this notebook.

## Checks
41 checks: 0 FAIL, 1 WARN.
