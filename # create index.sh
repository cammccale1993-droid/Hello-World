# create index.js
echo "console.log('Hello, world!');" > index.js

# init npm and add test script
npm init -y
npm set-script test "node index.js"ls -la
git status

