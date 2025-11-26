# GitHub Copilot Agent Instructions — Hello-World

This repository is intentionally minimal. It contains a tiny Node.js scaffold used for examples and CI testing by default.

Purpose
- Provide a safe, minimal workspace to show a quick Node.js example and a test workflow.

Key files to inspect
- `README.md` — project summary & quick start commands
- `package.json` — scripts and dev deps (`jest`)
- `src/index.js` — example module with `greet(name)`
- `test/index.test.js` — unit tests using Jest
- `.github/workflows/nodejs-test.yml` — GitHub Actions workflow (runs `npm test`)

Agent workflow (minimal & conservative)
1. Confirm intent for structural changes (e.g., ‘Please scaffold a full app’). Ask before introducing major frameworks or multiple language stacks.
2. If scaffold requested, propose the minimal set of files and a short test-targeted change. Keep PRs small and focused.
3. Use `feat/` branches for new scaffolds and `docs/` for README updates.

Commands & validation (Node)
- Install: `npm install`
- Run tests: `npm test`
- Run example: `npm start` (executes `src/index.js`)
- Linting: none configured by default; ask before adding a linter

Conventions & boundaries
- Keep the project minimal and dependency-light unless the owner requests otherwise.
- Respect the single-purpose nature of this repo—avoid adding unrelated services or test frameworks.
- Use `src/` and `test/` layout for any language scaffold you add.

When to ask permission
- Adding CI workflows beyond the simple test runner
- Introducing frameworks (React, Express, Django, etc.)
- Reorganizing files or renaming the repo

Quick examples
- Node scaffold PR template: add `package.json`, `src/`, `test/`, a single Jest test, and a CI workflow; keep changes under ~20 files.

If you’re unsure what to add, ask the repo owner which language/scaffold they want (Python, Node, Go, static site), and propose a minimal scaffold for approval.