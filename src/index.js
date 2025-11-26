function greet(name = 'World') {
  return `Hello, ${name}!`;
}

if (require.main === module) {
  // Run as script
  console.log(greet());
}

module.exports = { greet };
