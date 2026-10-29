# Notebook 04 (Debugged) — Debugging and Validation Report

*Run 20261026T083032Z (2026-10-26T08:30:32Z UTC). Builds on Notebook 03 run 20261022T095735Z and diagnoses original Notebook 04 run 20261022T124247Z. This file exists only if the notebook ran.*

## Scope
Numerical inference reliability only. The proposal, research questions, hypotheses, equations, data selection, likelihood, GP structure, pooling and priors are unchanged (tests below).

## Original pilot (read from the earlier run)
* D_base: divergences 1 [0, 1, 0, 0], tree-depth hits 0, accept per chain [0.958, 0.94, 0.927, 0.936], max R-hat 1.0054
* D_bounds_narrow: divergences 9 [2, 0, 7, 0], tree-depth hits 0, accept per chain [0.948, 0.935, 0.883, 0.933], max R-hat 1.0036
* D_bounds_wide: divergences 2 [0, 1, 0, 1], tree-depth hits 0, accept per chain [0.948, 0.926, 0.953, 0.908], max R-hat 1.0058
* D_matern32: divergences 4 [0, 1, 0, 3], tree-depth hits 0, accept per chain [0.956, 0.945, 0.94, 0.892], max R-hat 1.0052
* D_complete_pooling: divergences 0 [0, 0, 0, 0], tree-depth hits 0, accept per chain [0.911, 0.952, 0.937, 0.953], max R-hat 1.0056
* D_decomposition: divergences 0 [0, 0, 0, 0], tree-depth hits 0, accept per chain [0.909, 0.944, 0.936, 0.897], max R-hat 1.0046
* E_base: divergences 33 [3, 3, 9, 18], tree-depth hits 0, accept per chain [0.922, 0.942, 0.88, 0.86], max R-hat 1.0041

### Divergence localisation, original pilots
* ORIGINAL NB04 D_base | H1 positivity wall: g_bar margin < non-divergent 1% quantile: 0/1 vs 0.01 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_base | H2 inclination within 1 deg of 90: 0/1 vs 0.08 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_base | H3 GP length scale within 2% of a bound (any galaxy): 0/1 vs 0.14 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_base | H4 small tau (beyond non-divergent 5% quantile): 1/1 vs 0.05 expected (p = 0.05) — not supported by this test
* ORIGINAL NB04 D_base | H5 small sigma_int (beyond non-divergent 5% quantile): 0/1 vs 0.05 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_base | H6a funnel: small sigma_lnA (beyond non-divergent 5% quantile): 0/1 vs 0.05 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_base | H6b funnel: small sigma_u (beyond non-divergent 5% quantile): 0/1 vs 0.05 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_base | H7 large A_pop (beyond non-divergent 95% quantile): 0/1 vs 0.05 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_base | H8 chain concentration (chi-square vs uniform): 1/1 vs 0.25 expected (p = nan) — not supported by this test
* ORIGINAL NB04 D_bounds_narrow | H1 positivity wall: g_bar margin < non-divergent 1% quantile: 0/9 vs 0.09 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_narrow | H2 inclination within 1 deg of 90: 0/9 vs 0.80 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_narrow | H3 GP length scale within 2% of a bound (any galaxy): 2/9 vs 2.41 expected (p = 0.74) — not supported by this test
* ORIGINAL NB04 D_bounds_narrow | H4 small tau (beyond non-divergent 5% quantile): 4/9 vs 0.45 expected (p = 0.000643) — SUPPORTED (p < 0.01, >= 2 draws)
* ORIGINAL NB04 D_bounds_narrow | H5 small sigma_int (beyond non-divergent 5% quantile): 0/9 vs 0.45 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_narrow | H6a funnel: small sigma_lnA (beyond non-divergent 5% quantile): 1/9 vs 0.45 expected (p = 0.37) — not supported by this test
* ORIGINAL NB04 D_bounds_narrow | H6b funnel: small sigma_u (beyond non-divergent 5% quantile): 0/9 vs 0.45 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_narrow | H7 large A_pop (beyond non-divergent 95% quantile): 0/9 vs 0.45 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_narrow | H8 chain concentration (chi-square vs uniform): 7/9 vs 2.25 expected (p = 0.00224) — SUPPORTED (p < 0.01, >= 2 draws)
* ORIGINAL NB04 D_bounds_wide | H1 positivity wall: g_bar margin < non-divergent 1% quantile: 0/2 vs 0.02 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_wide | H2 inclination within 1 deg of 90: 0/2 vs 0.17 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_wide | H3 GP length scale within 2% of a bound (any galaxy): 0/2 vs 0.33 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_wide | H4 small tau (beyond non-divergent 5% quantile): 0/2 vs 0.10 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_wide | H5 small sigma_int (beyond non-divergent 5% quantile): 0/2 vs 0.10 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_wide | H6a funnel: small sigma_lnA (beyond non-divergent 5% quantile): 0/2 vs 0.10 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_wide | H6b funnel: small sigma_u (beyond non-divergent 5% quantile): 0/2 vs 0.10 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_wide | H7 large A_pop (beyond non-divergent 95% quantile): 0/2 vs 0.10 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_bounds_wide | H8 chain concentration (chi-square vs uniform): 1/2 vs 0.50 expected (p = nan) — not supported by this test
* ORIGINAL NB04 D_matern32 | H1 positivity wall: g_bar margin < non-divergent 1% quantile: 0/4 vs 0.04 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_matern32 | H2 inclination within 1 deg of 90: 0/4 vs 0.23 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_matern32 | H3 GP length scale within 2% of a bound (any galaxy): 1/4 vs 1.26 expected (p = 0.78) — not supported by this test
* ORIGINAL NB04 D_matern32 | H4 small tau (beyond non-divergent 5% quantile): 1/4 vs 0.20 expected (p = 0.185) — not supported by this test
* ORIGINAL NB04 D_matern32 | H5 small sigma_int (beyond non-divergent 5% quantile): 0/4 vs 0.20 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_matern32 | H6a funnel: small sigma_lnA (beyond non-divergent 5% quantile): 0/4 vs 0.20 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_matern32 | H6b funnel: small sigma_u (beyond non-divergent 5% quantile): 0/4 vs 0.20 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_matern32 | H7 large A_pop (beyond non-divergent 95% quantile): 0/4 vs 0.20 expected (p = 1) — not supported by this test
* ORIGINAL NB04 D_matern32 | H8 chain concentration (chi-square vs uniform): 3/4 vs 1.00 expected (p = nan) — not supported by this test
* ORIGINAL NB04 D_complete_pooling: no divergences
* ORIGINAL NB04 D_decomposition: no divergences
* ORIGINAL NB04 E_base | H1 positivity wall: g_bar margin < non-divergent 1% quantile: 3/33 vs 0.33 expected (p = 0.00436) — SUPPORTED (p < 0.01, >= 2 draws)
* ORIGINAL NB04 E_base | H2 inclination within 1 deg of 90: 3/33 vs 2.79 expected (p = 0.536) — not supported by this test
* ORIGINAL NB04 E_base | H3 GP length scale within 2% of a bound (any galaxy): 6/33 vs 5.04 expected (p = 0.391) — not supported by this test
* ORIGINAL NB04 E_base | H4 small tau (beyond non-divergent 5% quantile): 4/33 vs 1.65 expected (p = 0.0808) — not supported by this test
* ORIGINAL NB04 E_base | H5 small sigma_int (beyond non-divergent 5% quantile): 1/33 vs 1.65 expected (p = 0.816) — not supported by this test
* ORIGINAL NB04 E_base | H6a funnel: small sigma_lnA (beyond non-divergent 5% quantile): 2/33 vs 1.65 expected (p = 0.496) — not supported by this test
* ORIGINAL NB04 E_base | H6b funnel: small sigma_u (beyond non-divergent 5% quantile): 4/33 vs 1.65 expected (p = 0.0808) — not supported by this test
* ORIGINAL NB04 E_base | H7 large A_pop (beyond non-divergent 95% quantile): 0/33 vs 1.65 expected (p = 1) — not supported by this test
* ORIGINAL NB04 E_base | H8 chain concentration (chi-square vs uniform): 18/33 vs 8.25 expected (p = 0.000386) — SUPPORTED (p < 0.01, >= 2 draws)

## Changes (numerical only)
* Sampler: target_accept 0.9 -> 0.95; pilot warmup 1000 -> 1000; dense mass block for globals = True; independent dispersed chain starts (jitter 0.5); max tree depth 10 (unchanged).
* Exact reparameterisations: {"inclination": "noncentred", "upsilon_wall": "log_offset", "gp_hierarchy": "noncentred", "scales": "folded"}. Jitter: 0.0 (not required; condition numbers below 1e10).

## Equivalence tests (original vs revised)
* log-likelihood original vs revised at identical physical parameters (full data) [D]: max deviation 1.819e-12 (tol 1e-09) nats -> PASS
* joint log density: log p_rev(T^-1 theta) - log|J| = log p_orig(theta) [D]: max deviation 7.736e-15 (tol 1e-08) relative -> PASS
* log-likelihood original vs revised at identical physical parameters (full data) [E]: max deviation 1.819e-12 (tol 1e-09) nats -> PASS
* joint log density: log p_rev(T^-1 theta) - log|J| = log p_orig(theta) [E]: max deviation 6.024e-16 (tol 1e-08) relative -> PASS
* inclination quantile map = exact TruncatedNormal quantile (50-digit mpmath; 153 galaxies, z = -6..6) [D/E]: max deviation 1.577e-14 (tol 1e-10) deg -> PASS
* inclination prior KS [D/E]: max deviation 1.961e-03 (tol nan) p=0.424 -> PASS
* Zero-GP vs Notebook 03 saved Model C: max |diff| = 1.18e-12.

## Revised pilot (validation only)
* D_base: **converged by all criteria**; max R-hat 1.0058; min ESS bulk/tail 810/978; divergences 0 [0, 0, 0, 0]; tree-depth hits 0; mean accept 0.960; step sizes [0.0694, 0.0818, 0.1026, 0.0799]; min BFMI 0.75; 5.4 min
* E_base: **converged by all criteria**; max R-hat 1.0053; min ESS bulk/tail 570/942; divergences 0 [0, 0, 0, 0]; tree-depth hits 0; mean accept 0.944; step sizes [0.1109, 0.0888, 0.0645, 0.0836]; min BFMI 0.69; 5.8 min

### Divergence localisation, revised pilots
* PILOT D_base (debugged): no divergences
* PILOT E_base (debugged): no divergences

## Identifiability (preliminary; formal injection-recovery in Notebook 06)
* PILOT D_base: sigma_int piles toward 0 (posterior consistent with zero; only an upper limit is constrained)
* PILOT E_base: sigma_int piles toward 0 (posterior consistent with zero; only an upper limit is constrained)
* FULL Model D: sigma_int piles toward 0 (posterior consistent with zero; only an upper limit is constrained)
* FULL Model E: sigma_int piles toward 0 (posterior consistent with zero; only an upper limit is constrained)

Convergence of the sampler does not make sigma_int, tau, A and l separately identifiable. Section 13 reports their joint posteriors and contraction. No astrophysical claim follows from the pilot.

## Full-run gate
* Model D: OPEN (PILOT D_base debugged converged by all criteria = True); RUN_FULL_D = True.
* Model E: OPEN (PILOT E_base debugged converged by all criteria = True); RUN_FULL_E = True.

## FULL
### FULL Model D — NOT CONVERGED: do not interpret

| parameter | median | 68% | 95% |
|---|---|---|---|
| log10_a0 | -9.8834 | [-9.9179, -9.8471] | [-9.9499, -9.8081] |
| beta | 0.4940 | [0.4822, 0.5049] | [0.4720, 0.5161] |
| sigma_int | 0.0005 | [0.0001, 0.0009] | [0.0000, 0.0014] |
| tau | 0.0476 | [0.0255, 0.0653] | [0.0052, 0.0816] |
| A_pop | 8.9179 | [8.2188, 9.6811] | [7.5425, 10.5301] |
| ell_median_kpc | 2.9331 | [2.7480, 3.1368] | [2.5944, 3.3243] |

### FULL Model E — NOT CONVERGED: do not interpret

| parameter | median | 68% | 95% |
|---|---|---|---|
| log10_a0 | -9.9097 | [-9.9484, -9.8696] | [-9.9813, -9.8239] |
| beta | 0.4974 | [0.4847, 0.5089] | [0.4720, 0.5198] |
| sigma_int | 0.0005 | [0.0002, 0.0010] | [0.0000, 0.0015] |
| tau | 0.0338 | [0.0119, 0.0573] | [0.0021, 0.0812] |
| A_pop | 8.4499 | [7.7407, 9.2021] | [7.1162, 9.9675] |
| ell_median_kpc | 2.9328 | [2.7442, 3.1567] | [2.5879, 3.3759] |

## Intrinsic scatter: independent vs correlated errors
FULL D: sigma_int median 0.0005 vs C 0.0356; reduction supported (95% intervals separated) [model not converged: do not interpret]
FULL E: sigma_int median 0.0005 vs C 0.0356; reduction supported (95% intervals separated) [model not converged: do not interpret]
PILOT D_base: sigma_int median 0.0020 vs C 0.0604; reduction supported (95% intervals separated)
PILOT E_base: sigma_int median 0.0019 vs C 0.0604; reduction supported (95% intervals separated)

## Checks
45 checks: 0 FAIL, 1 WARN.
