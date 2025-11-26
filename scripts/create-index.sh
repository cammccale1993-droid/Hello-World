#!/usr/bin/env bash
set -euo pipefail

# This script creates a minimal src/index.js (if missing), initializes npm
# (if needed), lists project files, and shows git status if inside a repo.

# create src/index.js
if [ ! -f "src/index.js" ]; then
  mkdir -p src
  cat > src/index.js <<'JS'
function greet(name = 'World') {
  return `Hello, ${name}!`;
}

if (require.main === module) {
  // Run as script
  console.log(greet());
}

module.exports = { greet };
JS
  echo "Created src/index.js"
else
  echo "src/index.js already exists; skipping"
fi

# init npm only if package.json does not exist
if [ ! -f package.json ]; then
  npm init -y
fi

# Show files and package.json test script
ls -la
echo
echo "package.json test script:"
node -p "require('./package.json').scripts.test"

# Show git status only when inside a git repo
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git status --short
else
  echo "Not a git repository; skipping git status"
fi

echo "Done."
