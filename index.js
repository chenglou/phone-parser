module.exports = phoneParser;

function phoneParser(input, format) {
  // Trim away everything that's not a digit.
  input = input.replace(/\D/g, '');
  // Split to array for easier popping.
  input = input.split('');
  format = format.split('');
  var output = '';
  while (format.length) {
    currentFormatSymbol = format.pop();
    if (currentFormatSymbol === 'x') {
      var digitToInsert = input.pop();
      if (digitToInsert === undefined) break;
      output = digitToInsert + output;
    } else {
      output = currentFormatSymbol + output;
    }
  }

  if (input.length !== 0 || format.length !== 0) {
    throw new Error('Phone format cannot be parsed.');
  }
  return output;
}
