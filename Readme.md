
# Phone Parser
Parse the phone input into an output format of your choice. Good for formatting a user input.

## Installation
Through [component](https://github.com/component/component):

```bash
$ component install chenglou/phone-parser
```

Through [npm](https://npmjs.org):

```bash
$ npm install phone-parser
```

Or directly [download the script](https://raw.github.com/chenglou/phone-parser/master/index.js) for browsers. Rename it however you want.

## API
`'x'` represents a digit placeholder.

```js
// This is the component/npm format. Browser format below.
var phoneParser = require('phone-parser');

phoneParser('2341234447', '(xxx) xxx-xxxx'); // Returns '(234) 123-4447'.
phoneParser('+86 455 6988', 'xxxxxxxxx'); // Returns '864556988'.
phoneParser(' 123 4567  ', '+1 xxx xxxx'); // Returns '+1 123 4567'.
phoneParser('123 4567890', '+1 xxx xxxx'); // Error: phone format cannot be parsed.
```

Remember, only `'x'` is a placeholder. The rest is treated as part of the formatting.

**For browsers** (real-life example of formatting an input field):

```html
<input type="text" id="phone" />
<script src="index.js"></script>
<script>
  var phoneField = document.getElementById('phone');
  phoneField.addEventListener('change', function() {
    try{
      phoneField.value = phoneParser(phoneField.value, '(xxx) xxx-xxxx');
    } catch(e) {}
  });
</script>
```

## Testing
Using npm:

If you haven't installed jasmine-node and CoffeeScript:

```bash
$ npm install
```

Then:

```bash
$ npm test
```

## License
MIT.
