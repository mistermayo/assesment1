require('rspec')
require('frequency')

describe('String#frequency') do
  it("returns 0 if given a string without the entered_word") do
    expect(("I'm sipping a coke zero in France.").frequency("barf")).to(eq(0))
  end
  it("returns 1 if given a matching string and entered_word") do
    expect(("clam").frequency("clam")).to(eq(1))
  end
  it("returns 1 if passed a string with one matching case entered_word occurence near the middle") do
    expect(("My chicken is made for walking.").frequency("chicken")).to(eq(1))
  end
  it("returns a the correct count if passed a string with multiple matching case entered_word occurences") do
    expect(("chicken orange chicken banana").frequency("chicken")).to(eq(2))
  end
end
