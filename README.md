# Permutation-Based Multiple Testing under Dependence

## Project Description

This repository contains R code developed as part of a PhD research project on **multiple hypothesis testing under dependence**, with a particular focus on permutation-based methods and e-value-based multiple testing procedures.

In multiple hypothesis testing, several statistical hypotheses are tested simultaneously. An important challenge is controlling the probability or proportion of false discoveries while maintaining sufficient statistical power. This becomes particularly challenging when the test statistics are dependent.

The main objective of this research is to investigate how **permutation-based calibration** can be used to construct and evaluate multiple testing procedures under dependence, with particular attention to false discovery rate (FDR) and family-wise error rate (FWER) control.

The software provides a computational framework for generating dependent data, implementing multiple testing procedures, conducting simulation experiments, and comparing their statistical performance.

## Research Objectives

The main objectives of the project are:

1. Investigate multiple testing procedures under dependent test statistics.
2. Develop and evaluate permutation-based calibration methods.
3. Study the use of e-values and closed testing procedures for multiple hypothesis testing.
4. Compare permutation-based procedures with existing methods that do not use permutation calibration.
5. Evaluate FDR, FWER, and statistical power through simulation studies.

## Methods and Implementation

The project is implemented in **R** and focuses on the following components:

- **Data generation:** Simulation of dependent Gaussian observations, including equicorrelated data and configurations containing both null and alternative hypotheses.
- **Permutation methods:** Generation of reference distributions using sign-flipping transformations.
- **Multiple testing procedures:** Implementation and evaluation of methods involving Simes merging, e-values, and closed testing.
- **Simulation studies:** Repeated experiments under different dependence structures, sample sizes, and signal strengths.
- **Performance evaluation:** Comparison of procedures using FDR, FWER, statistical power, and rejection outcomes.

## Intended Users

This software is primarily intended for researchers, PhD students, and practitioners working in mathematical statistics, computational statistics, and multiple hypothesis testing.

It may also serve as a computational resource for studying the effects of dependence on multiple testing procedures and for reproducing simulation experiments associated with this research.

## Software Management Plan (SMP)

This Software Management Plan describes how the research software will be developed, documented, tested, shared, and maintained in accordance with the University of Twente Research Software Management Guidelines.

### 1. Software description and intended user community

**Permutation-Based Multiple Testing under Dependence** is an R research software project developed to investigate multiple hypothesis testing procedures under dependence.

The software focuses on permutation-based calibration, Simes merging, e-values, closed testing, and the evaluation of false discovery rate (FDR), family-wise error rate (FWER), and statistical power.

The intended users are researchers and students working in mathematical statistics, computational statistics, and multiple testing.

### 2. Version control system

Git is used for version control, with GitHub hosting the repository. Changes will be recorded through descriptive commits, and significant software milestones may be identified using version tags and releases.

### 3. Public availability

The software is currently hosted in a private GitHub repository:

https://github.com/Rovanos/testRepro

Public release is planned after reviewing the code, documentation, licensing, and applicable institutional requirements.

### 4. Software license

The proposed license is the MIT License, subject to confirmation that the developer has the necessary rights to distribute the software under this license.

The repository contains a `LICENSE` file.

### 5. Long-term sustainability during the project

The software will be organized into modular R scripts, separating data generation, permutation procedures, multiple testing methods, and simulation analysis.

Git will track changes, while GitHub will support collaboration and issue tracking. Dependencies and software versions will be documented, with `renv` considered for environment management.

Documentation, testing, and reproducible simulation examples will be developed throughout the project.

### 6. Support after project completion

Maintenance will initially be the responsibility of the developer. Bug reports and suggested improvements may be submitted through GitHub Issues when the repository becomes publicly available.

Long-term maintenance will depend on research needs and available resources. The final research version will be archived to preserve access even if active development ends.

### 7. Resources and funding

The project primarily requires R, Git, GitHub, and computing resources for simulation studies.

Development is intended to use existing research computing infrastructure and freely available software. Additional computing resources may be required for large-scale simulations.

No separate long-term maintenance funding has been identified.

### 8. Additional measures for software longevity

The repository will include version history, documentation, citation metadata, licensing information, and reproducible examples.

Important releases are intended to be archived in a trusted repository such as Zenodo or 4TU.ResearchData, where a persistent DOI can be assigned.

### 9. Software documentation

The `README.md` will describe the project's purpose, organization, installation, and usage.

The `docs/` directory will contain more detailed explanations of the implemented methods, assumptions, simulation settings, and output interpretation.

### 10. Installation requirements

Installation instructions will identify the required R version, packages, and execution steps.

An `renv.lock` file is planned to record package dependencies and improve reproducibility across computing environments.

### 11. Software citation

The repository includes a `CITATION.cff` file for machine-readable citation information.

The citation metadata will be updated to identify the software, its contributors, and its version. A DOI will be added after an archived release becomes available.

### 12. Software testing

Testing will include unit tests for key R functions, numerical checks against known mathematical properties, and reproducibility checks using fixed random seeds.

Where feasible, automated tests will be run through GitHub Actions.

Simulation results will be checked for consistency with the theoretical properties of the implemented procedures.

### 13. Software packaging and distribution

The software will initially be distributed as a documented collection of R scripts through GitHub.

A formal R package may be considered if the software develops reusable functions suitable for wider distribution.

Stable releases will be versioned and archived when appropriate.


<div align="center">
  <img src="img/UT_Logo_0072_Black_EN.png" alt="logo">
</div>

A template to comply with the [University of Twente Research Software Guidelines](https://zenodo.org/records/15807424) for making your software project FAIR.

To align with FAIR4RS (Findable, Accessible, Interoperable, Reusable for Research Software) and Dutch Open Science standards (supported by institutions like NWO and eScience Center), your R project should be treated as a research software package. 

## Folder Structure

Recommended structure for an R research software at UT.

```text
project-root/
├── data/
│   ├── raw/                # Read-only original data
│   └── processed/          # Data generated by scripts (don't track in Git)
├── code/                   # R functions and logic (modular code, Analysis execution, ordered 01_., 02_.)
├── img/                    # Image files (.png, .jgeg, .svg.)
├── outputs/
│   ├── figures/            # Generated plots refering to your journal article
│   └── reports/            # Rendered Quarto/Markdown documents
├── tests/                  # Unit tests for your R functions
├── docs/                   # Documentation (e.g., Quarto website)
├── .github/                # GitHub Actions for CI/CD and FAIR automation
├── CITATION.cff            # FAIR: Machine-readable citation metadata
├── codemeta.json           # FAIR: Comprehensive software metadata
├── DESCRIPTION             # R-standard metadata (dependencies)
├── LICENSE                 # Open Science: e.g., MIT or Apache 2.0
├── README.md               # Human-readable entry point
└── renv.lock               # Reproducibility: R environment snapshot
```

### Research Code

The `code/permutation/` directory contains R scripts developed for investigating permutation-based multiple testing procedures under dependence.

The file `PermutedA.R` provides a simulation example that generates dependent Gaussian observations, introduces non-null hypotheses, computes observed two-sided Gaussian p-values, and generates sign-flipped reference statistics.

The script includes a fixed random seed to support reproducible simulation results. The current implementation is a research prototype, and further testing and documentation will be added as part of the software management workflow.

## Installation

[Describe the steps that users (not developers) should follow to install the code in each of the intended platforms (e.g. Window 10, MacOS, etc.).]

**Requirements** 
- [List the software, OS, and/or technologies on which the code depends, and add hyperlinks to the sources whenever possible.]
- [State any relevant hardware requirements.]

## License
This software is distributed under a [MIT](LICENSE). 

## Copyright

&copy; , The Netherlands. 

## Citation

[Include a [CCF file (Citaion File Format)](https://citation-file-format.github.io/). See example in this repo: `CITATION.cff`. You can easily create the content of a CCF using [this tool](https://citation-file-format.github.io/cff-initializer-javascript/). ]

[CCF files can be converted to a multitude of formats, including BibTex,  EndNote, codemeta, plain JSON, schema.org, RIS, and Zenodo JSON ]

## Acknowlegdements

- [Best practices for sustainable software project, TDCC NES](https://github.com/SS-NES)
- [Any other acknowlegdements]