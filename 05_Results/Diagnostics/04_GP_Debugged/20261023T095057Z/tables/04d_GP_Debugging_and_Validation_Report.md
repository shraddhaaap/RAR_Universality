# Notebook 04 (Debugged) — Debugging and Validation Report

*Run 20261023T095057Z (2026-10-23T09:50:57Z UTC). Builds on Notebook 03 run 20261022T095735Z and diagnoses original Notebook 04 run 20261022T124247Z. This file exists only if the notebook ran.*

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
* Sampler: target_accept 0.9 -> 0.95; pilot warmup 1000 -> 2000; dense mass block for globals = True; independent dispersed chain starts (jitter 0.5); max tree depth 10 (unchanged).
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
* D_base: **converged by all criteria**; max R-hat 1.0042; min ESS bulk/tail 980/1328; divergences 0 [0, 0, 0, 0]; tree-depth hits 0; mean accept 0.955; step sizes [0.0842, 0.0838, 0.0909, 0.0961]; min BFMI 0.72; 22.1 min
* E_base: **converged by all criteria**; max R-hat 1.0049; min ESS bulk/tail 884/1291; divergences 0 [0, 0, 0, 0]; tree-depth hits 0; mean accept 0.964; step sizes [0.0979, 0.0588, 0.0735, 0.0707]; min BFMI 0.68; 22.9 min
* D_bounds_narrow: **converged by all criteria**; max R-hat 1.0051; min ESS bulk/tail 620/1654; divergences 0 [0, 0, 0, 0]; tree-depth hits 0; mean accept 0.965; step sizes [0.0636, 0.0933, 0.0691, 0.071]; min BFMI 0.73; 21.5 min

### Divergence localisation, revised pilots
* PILOT D_base (debugged): no divergences
* PILOT E_base (debugged): no divergences
* PILOT D_bounds_narrow (debugged): no divergences

## Identifiability (preliminary; formal injection-recovery in Notebook 06)
* PILOT D_base: sigma_int piles toward 0 (posterior consistent with zero; only an upper limit is constrained)
* PILOT E_base: sigma_int piles toward 0 (posterior consistent with zero; only an upper limit is constrained); tau weakly constrained (contraction < 0.5)
* PILOT D_bounds_narrow: sigma_int piles toward 0 (posterior consistent with zero; only an upper limit is constrained); tau weakly constrained (contraction < 0.5)

Convergence of the sampler does not make sigma_int, tau, A and l separately identifiable. Section 13 reports their joint posteriors and contraction. No astrophysical claim follows from the pilot.

## Full-run gate
* Model D: OPEN (PILOT D_base debugged converged by all criteria = True); RUN_FULL_D = False.
* Model E: OPEN (PILOT E_base debugged converged by all criteria = True); RUN_FULL_E = False.

## FULL
**Full Models D and E were not run in this session (RUN_FULL_D = RUN_FULL_E = False); no full-sample GP results exist.**

## Intrinsic scatter: independent vs correlated errors
FULL: comparison not available.
PILOT D_base: sigma_int median 0.0018 vs C 0.0604; reduction supported (95% intervals separated)
PILOT E_base: sigma_int median 0.0019 vs C 0.0604; reduction supported (95% intervals separated)

## Checks
45 checks: 0 FAIL, 1 WARN.
