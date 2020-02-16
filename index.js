const path = require('path');

const matcherPath = path.join(__dirname, 'msvc_matcher.json');
console.log('::add-matcher::' + matcherPath);
