phoneParser = require '../'

describe "Phone formatting", ->
  it "should parse a number into the specified format", ->
    expect(phoneParser '2341234447', '(xxx) xxx-xxxx').toBe '(234) 123-4447'
    expect(phoneParser '+86 455 6988', 'xxxxxxxxx').toBe '864556988'
    expect(phoneParser ' 123 4567  ', '+1 xxx xxxx').toBe '+1 123 4567'

  it "should throw an error if the input's not formatted correctly", ->
    expect(-> phoneParser '123 4567890', '+1 xxx xxxx').toThrow()
    expect(-> phoneParser '2', '+1 xx').toThrow()
    expect(-> phoneParser '2', 'abc').toThrow()

