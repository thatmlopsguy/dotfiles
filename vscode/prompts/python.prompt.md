---
mode: ask
description: 'Create a Python backend template using FastAPI with uv and ruff for dependency management and code quality.'
---
# Python Backend Template

## Project Setup

- Use FastAPI for building the backend.
- Use `uv` as the package manager for dependency management.
- Use `ruff` as the linter and formatter for code quality.
- Recommend setting up `pre-commit` hooks for automated checks.

## Expected Output

- A FastAPI project structure with a clear entry point (`main.py`).
- A `pyproject.toml` file configured for `uv` and `ruff`.
- Pre-commit hooks configured to run `ruff` and other checks.

## Constraints

- Ensure compatibility with Python 3.10 or higher.
- Follow PEP 8 standards for code formatting.
- Include a README with setup instructions and usage examples.

## Additional Notes

- Provide a sample endpoint (`/health`) for health checks.
- Include a `.pre-commit-config.yaml` file for pre-commit setup.
