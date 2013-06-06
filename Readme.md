
# phoneParser
Parse the phone input into an output format of your choice. Good for formatting a user input.

## Installation
```bash
$ component install chenglou/phoneParser
```

## API
`'x'` represents a digit placeholder.
```js
phoneParser('2341234447', '(xxx) xxx-xxxx'); // Returns '(234) 123-4447'.
phoneParser('+86 455 6988', 'xxxxxxxxx'); // Returns '864556988'.
phoneParser('123 4567', '+1 xxx xxxx'); // Returns '+1 123 4567'.
phoneParser('123 4567890', '+1 xxx xxxx'); // Error: phone format cannot be parsed.
```
Remember, only `x` is a placeholder. The rest is treated as part of the formatting.

## Testing
Using npm:

If you haven't installed jasmine-node and CoffeeScript globally:
```bash
$ npm install
```
Then:
```bash
$ npm test
```

## License
MIT.
