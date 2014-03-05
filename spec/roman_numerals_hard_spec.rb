require 'rspec'
require 'roman_numerals_hard'

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

describe('roman_unnumeralize') do
  it('changes I to 1') do
    roman_unnumeralize("I").should(eq(1))
  end
  it('changes CM to 900') do
    roman_unnumeralize("CM").should(eq(900))
  end  
  it('changes IV to 4') do
    roman_unnumeralize("IV").should(eq(4))
  end
  it('changes dccxxxv to 735') do
    roman_unnumeralize("dccxxxv").should eq 735
end
