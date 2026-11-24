# Permutation-Based Multiple Testing under Dependence


[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.24485019.svg)](https://doi.org/10.5281/zenodo.24485019)


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

## Research Software Management and FAIR Principles

This repository contains research software developed as part of a PhD project investigating permutation-based multiple hypothesis testing under dependence.

The project follows the [University of Twente Research Software Guidelines](https://zenodo.org/records/15807424) and aims to align with the FAIR4RS (Findable, Accessible, Interoperable, Reusable for Research Software) principles.

The repository includes a Software Management Plan (SMP), version-controlled R code, reproducibility tests, documentation, software citation metadata, and strategies for archiving, institutional registration, and long-term maintenance.

The software is currently under development. Public release, archiving with a DOI, and registration in the University of Twente's Pure system are planned for an appropriate future research milestone.

## Software Archiving and DOI Strategy

### Why archive the software?

Archiving research software supports long-term preservation, reproducibility, and scientific citation. A Digital Object Identifier (DOI) provides a persistent reference to a specific software release, even if active development on GitHub later stops.

The first version of this research software (v0.1.0) has been released on GitHub and archived on Zenodo.

**Zenodo DOI:** https://doi.org/10.5281/zenodo.24485019

The software remains under active development. Future releases will be documented and archived as appropriate.

### How will the software be archived?

The planned workflow is:

1. Review the code, documentation, tests, and software license.
2. Prepare a versioned GitHub release, such as `v1.0.0`.
3. Archive the release using Zenodo or another suitable trusted research software repository.
4. Obtain a DOI for the archived version.
5. Add the DOI to the README and `CITATION.cff`.
6. Cite the archived software version in related scientific publications.

### Current Status

The first version of this research software, **v0.1.0**, has been released on GitHub and archived in Zenodo.

- **GitHub release:** https://github.com/Rovanos/testRepro/releases/tag/v0.1.0
- **Zenodo DOI:** https://doi.org/10.5281/zenodo.24485019

This archived release provides a persistent, citable snapshot of the research software. Future software versions will be documented through GitHub releases and archived as appropriate.


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

If you use this software in your research, please cite it using the metadata provided in the [`CITATION.cff`](CITATION.cff) file.

**Software:** *Permutation-Based Multiple Testing under Dependence*

**Author:** Rovanos Tsafack

**Repository:** https://github.com/Rovanos/testRepro

The first version of this research software (v0.1.0) has been released on GitHub and archived on Zenodo. Its DOI is https://doi.org/10.5281/zenodo.24485019. The software remains under active development.

GitHub can use the `CITATION.cff` file to display citation information for the repository.



## Registration in University of Twente Pure

### Purpose

The University of Twente's Pure research information system provides a way to register and showcase research outputs associated with the university.

Registering research software in Pure can improve its visibility, support institutional reporting, and help connect the software to related research publications.

### Current Status

This software is currently under development as part of a PhD research project and has not yet been registered in Pure.

Registration is planned when an appropriate software version is ready for release and the necessary publication and licensing requirements have been reviewed.

### Planned Registration Process

Before registration, the following actions are intended:

1. Prepare a stable, documented version of the research software.
2. Review the applicable software ownership and licensing requirements.
3. Archive the software in a suitable repository and obtain a DOI, when appropriate.
4. Register the software as a research output in the University of Twente's Pure system, following the university's current procedures.
5. Associate the software record with its authors, repository, archived version, and related research publications.

### Reflection

Pure registration is an important part of making research software discoverable and giving appropriate academic recognition to its developers.

For this project, registration will be considered at a suitable research milestone rather than during early software development.


## Software Promotion and Maintenance

### Promotion Strategy

The first public version of this software (v0.1.0) has been released on GitHub and archived on Zenodo. The software remains an early research prototype.

Once a stable version is available, the project may be promoted through related scientific publications, conference presentations, research collaborations, and appropriate research software directories.

The GitHub repository will serve as the main development platform, while archived releases and associated DOIs will support long-term discovery and citation.

### Maintenance Strategy

The software will initially be maintained by its developer during the PhD research project.

Maintenance activities will include:

- Reviewing and correcting reported bugs.
- Updating documentation and reproducibility instructions.
- Reviewing software dependencies.
- Adding tests when new functionality is introduced.
- Recording significant changes in `CHANGELOG.md`.

Contributions and issue reports may be considered as the project develops. See [`CONTRIBUTING.md`](CONTRIBUTING.md) for further information.

### Current Status

The software is a research prototype. Public promotion and long-term maintenance arrangements will be reviewed when a stable release is prepared.

## Acknowlegdements

- [Best practices for sustainable software project, TDCC NES](https://github.com/SS-NES)
- [Any other acknowlegdements]