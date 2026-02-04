const { execSync } = require('child_process');

test('examples run without error', () => {
  expect(() => execSync('node examples/app.js', { stdio: 'ignore' })).not.toThrow();
});

test('fs write functions exist', () => {
  const fs = require('fs');
  expect(typeof fs.writeFile).toBe('function');
  expect(typeof fs.writeFileSync).toBe('function');
});
