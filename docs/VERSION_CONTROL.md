# Version Control Strategy

This project uses Git for version control and GitHub for repository hosting.

## Development workflow

Changes to the research software are tracked through Git commits. Each commit should represent a meaningful modification, such as adding a research function, correcting a bug, updating documentation, or improving reproducibility.

The `main` branch contains the current project version. Experimental changes may be developed in separate branches before being incorporated into `main`.

## Commit conventions

Descriptive commit messages are used to explain changes:

- `feat:` for new functionality.
- `fix:` for bug fixes.
- `docs:` for documentation changes.
- `test:` for adding or updating tests.
- `chore:` for repository maintenance.

## Releases

Important research milestones may be identified using version tags and GitHub releases.

Stable versions intended for scientific publication will be considered for long-term archiving in a repository such as Zenodo.

## Collaboration

GitHub Issues may be used to record bugs, feature requests, and development tasks. Contributions will be reviewed before integration.

## Reproducibility

Simulation settings, random seeds, software dependencies, and important changes will be documented to support reproducibility.