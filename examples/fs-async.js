const fs = require('fs');
const path = require('path');
const out = path.join(__dirname, 'async.txt');
fs.writeFile(out, 'Hello Async\n', (err) => {
  if (err) {
    console.error(err);
    process.exit(1);
  }
  console.log(`Wrote ${out}`);
});
