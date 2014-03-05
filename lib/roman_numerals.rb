def roman_numeralize(number) 
  # partial_romanized = []
  # number.times do
  #   partial_romanized << "I"
  partial_romanized = "I" * number
  # end
  # string_of_I = partial_romanized.join("")
  string_of_I = partial_romanized
  string_of_V = string_of_I.gsub "IIIII", "V" #.gsub(/I{5}/, "V")
  string_of_X = string_of_V.gsub "VV", "X"
  string_of_L = string_of_X.gsub "XXXXX", "L"
  string_of_C = string_of_L.gsub "LL", "C"
  string_of_D = string_of_C.gsub "CCCCC", "D"
  string_of_M = string_of_D.gsub "DD", "M"
  string_of_CM = string_of_M.gsub "DCCCC", "CM"
  string_of_CD = string_of_CM.gsub "CCCC", "CD"
  string_of_XC = string_of_CD.gsub "LXXXX", "XC"
  string_of_XL = string_of_XC.gsub "XXXX", "XL"
  string_of_IX = string_of_XL.gsub "VIIII", "IX"
  roman_numeral = string_of_IX.gsub "IIII", "IV"
  roman_numeral
end

def roman_unnumeralize(letters)
  cm = letters.upcase.sub "CM", "s" * 900
  cd = cm.sub "CD", "s" * 400
  xc = cd.sub "XC", "s" * 90
  xl = xc.sub "XL", "s" * 40
  ix = xl.sub "IX", "s" * 9
  iv = ix.sub "IV", "s" * 4
  m = iv.gsub "M", "s" * 1000
  d = m.gsub "D", "s" * 500
  c = d.gsub "C", "s" * 100
  l = c.gsub "L", "s" * 50
  x = l.gsub "X", "s" * 10
  v = x.gsub "V", "s" * 5
  v.length #.count .size
end

# print roman_unnumeralize("mxlix")
# print roman_numeralize(1049)
puts roman_numeralize(roman_unnumeralize("v"))
puts roman_unnumeralize(roman_numeralize(1049))
