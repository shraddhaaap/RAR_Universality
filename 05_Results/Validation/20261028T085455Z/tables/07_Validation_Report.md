# Notebook 07 — Functional-Form Sensitivity and Grouped Cross-Validation — Report

*Run 20261028T085455Z (2026-10-28T08:54:55Z UTC); Notebook 03 run 20261022T095735Z. This file exists only if the notebook ran.*

## Full-data fits (Model C error model)
* gen_baseline: converged=True; max R-hat 1.0045258458314705; ESS 3627.569725794483/1674.1804625851553; divergences 0; 5.5 min
* gen_dep_logMbar: converged=True; max R-hat 1.0044874903921197; ESS 1555.6957609309936/1199.0911187367437; divergences 0; 8.0 min
* dpl_baseline: converged=True; max R-hat 1.005894630085983; ESS 1958.551650222283/1502.724486920009; divergences 0; 10.1 min
* dpl_dep_logMbar: converged=True; max R-hat 1.0045376786204134; ESS 1369.89176668929/1647.1844140459355; divergences 0; 13.8 min
* simple_baseline: converged=True; max R-hat 1.003932067588038; ESS 3940.3266340953637/2119.1935321644164; divergences 0; 5.2 min
* simple_dep_logMbar: converged=True; max R-hat 1.0042847247501336; ESS 1544.6001685618928/1719.0429338411884; divergences 0; 6.7 min

## Baseline parameters by form
* gen_baseline log10_a0: -10.0476 [-10.1026, -9.9901]
* gen_baseline beta: 0.5143 [0.5006, 0.5280]
* gen_baseline sigma_int: 0.0356 [0.0336, 0.0376]
* gen_baseline tau: 0.1223 [0.1022, 0.1454]
* dpl_baseline log10_t0: -9.5279 [-9.7136, -9.3316]
* dpl_baseline c_dpl: -0.1027 [-0.1708, -0.0380]
* dpl_baseline t2_dpl: 1.1219 [1.0353, 1.2398]
* dpl_baseline t3_dpl: 0.5580 [0.5379, 0.5759]
* dpl_baseline sigma_int: 0.0357 [0.0338, 0.0378]
* dpl_baseline tau: 0.1211 [0.1010, 0.1436]
* simple_baseline log10_g0: -9.9657 [-10.0028, -9.9274]
* simple_baseline sigma_int: 0.0358 [0.0339, 0.0378]
* simple_baseline tau: 0.1249 [0.1050, 0.1489]

## Mass dependence by form (slope per SD of logMbar)
* gen loc: +0.1052 [+0.0288, +0.1796], z = +2.76
* gen shape: beta (larger = shallower low-g slope 1-beta): -0.0567 [-0.0762, -0.0367], z = -5.64
* gen log_sigma_int: -0.1845 [-0.2453, -0.1232], z = -5.90
* gen log_tau: -0.3365 [-0.5261, -0.1777], z = -3.81
* dpl loc: +0.3008 [+0.2078, +0.3841], z = +6.58
* dpl shape: t3 (low-g slope): +0.0853 [+0.0669, +0.1028], z = +9.19
* dpl log_sigma_int: -0.2013 [-0.2622, -0.1409], z = -6.53
* dpl log_tau: -0.2905 [-0.4902, -0.1254], z = -3.15
* simple loc: -0.0673 [-0.1238, -0.0154], z = -2.47
* simple log_sigma_int: -0.1898 [-0.2512, -0.1263], z = -6.00
* simple log_tau: -0.3892 [-0.5616, -0.2296], z = -4.58

**Functional-form verdict on the Notebook 06 'hints':** acceleration-scale trend has the same sign under all forms = False;
low-acceleration-slope trend has the same sign in the generalised RAR and the double power law = True.
A trend that changes sign between forms is a functional-form artefact; a trend that keeps its sign is form-independent but, per Notebook 06,
must still be weighed against the correlated-noise null.

## Five-fold galaxy-grouped cross-validation (integrated held-out predictive density)
* gen_dep_logMbar: elpd_CV 3379.4 (SE 406.1); delta vs generalised baseline +74.4 (SE 45.5); better for 76 galaxies
* simple_baseline: elpd_CV 3323.8 (SE 409.1); delta vs generalised baseline +18.8 (SE 12.9); better for 74 galaxies
* gen_baseline: elpd_CV 3305.0 (SE 409.6)
* dpl_baseline: elpd_CV 3236.0 (SE 406.0); delta vs generalised baseline -69.0 (SE 24.6); better for 73 galaxies

## Caveats
* Model C (independent errors) throughout; the correlated-error models are too expensive to cross-validate here. Notebook 06 showed population trends under Model C are not robust to correlated noise.
* Priors for the alternative forms are broad documented choices (not specified by the proposal).
* CV training fits use a reduced sampler budget (2 chains x (500 + 750)); their quality is checked (divergences, key R-hat).

## Checks
46 checks: 0 FAIL, 1 WARN.
