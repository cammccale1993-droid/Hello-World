const { greet } = require('../src/index');

test('greet returns default greeting', () => {
  expect(greet()).toBe('Hello, World!');
});

test('greet returns personalized greeting', () => {
  expect(greet('Alice')).toBe('Hello, Alice!');
});
