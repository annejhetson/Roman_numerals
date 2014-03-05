require 'rspec'
require 'roman_numerals'

describe('roman_numeralize') do
  it('changes 1 to I') do
    roman_numeralize(1).should(eq("I"))
  end
  it('changes 2 to II') do
    roman_numeralize(2).should(eq("II"))
  end
  it('changes 5 to V') do
    roman_numeralize(5).should(eq("V"))
  end
  it('changes 1000 to M') do
    roman_numeralize(1000).should(eq("M"))
  end
  it('changes 4 to IV') do
    roman_numeralize(4).should(eq("IV"))
  end
end
