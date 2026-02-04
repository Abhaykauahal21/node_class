const fs = require('fs');
const path = require('path');
const out = path.join(__dirname, 'sync.txt');
fs.writeFileSync(out, 'Hello Sync\n');
console.log(`Wrote ${out}`);
