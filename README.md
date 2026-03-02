# CI/CD Templates

A central repository for reusable GitHub Actions workflows across portfolio projects.

## Workflows

### 1. `python-ci.yml`
Standard CI pipeline for Python/Poetry projects. Runs `ruff` for linting/formatting and `pytest` for unit testing.

**Usage:**
```yaml
jobs:
  test:
    uses: AndySchubert/cicd-templates/.github/workflows/python-ci.yml@main
    with:
      python-version: "3.12"
```

### 2. `mkdocs-pages.yml`
Standard pipeline to build MkDocs documentation, check for broken links using Lychee, and deploy to GitHub Pages.

**Usage:**
```yaml
jobs:
  docs:
    uses: AndySchubert/cicd-templates/.github/workflows/mkdocs-pages.yml@main
    permissions:
      contents: read
      pages: write
      id-token: write
```
