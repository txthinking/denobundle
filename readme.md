# denobundle

Bundle assets into the binary with deno compile

Install via [nami](https://github.com/txthinking/nami)

```
nami install denobundle
```

Usage

```
static/
└── hello.txt
```

```
denobundle static bundle.js
```

```
import readFileSync from './bundle.js';

var data = readFileSync("static/hello.txt"); // Uint8Array
```

