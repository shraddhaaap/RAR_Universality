# RAR Universality Research

Analysis of the Radial Acceleration Relation (RAR) using SPARC galaxies: baseline fits, Bayesian/GP models, population dependence, injection-recovery tests, functional-form and cross-validation checks, and null/shuffle tests.

## Repository layout

| Folder | Contents |
|---|---|
| `01_Datasets/` | Input data (SPARC, THINGS, LITTLE_THINGS, UNIFIED_HI) |
| `02_Colab_Notebooks/` | Analysis notebooks 05-08 (population dependence, injection recovery, functional form and cross-validation, null tests) |
| `03_Processed_Data/` | Cleaned data, integrity checks, logs |
| `04_Trained_Models/` | Bayesian model specifications and sampler configs (JSON) |
| `05_Results/` | Diagnostics, Population_Dependence, Injection_Recovery, Injection_Recovery_Extended, Validation |

## Running the notebooks

The notebooks were developed in Google Colab and read from Google Drive paths. To rerun them locally, change the base path at the top of each notebook to the cloned repository folder.

## Notes

- Large model files or datasets should be tracked with Git LFS (see `.gitattributes`).
- Notebook outputs are included; strip them with `jupyter nbconvert --clear-output` if the repo gets too large.
