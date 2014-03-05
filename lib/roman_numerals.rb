def roman_numeralize(number) 
  partial_ramonized = []
  number.times do
    partial_ramonized << "I"
  end
  string_of_I = partial_ramonized.join("")
  string_of_V = string_of_I.gsub "IIIII", "V"
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
  string_of_IV = string_of_IX.gsub "IIII", "IV"
  string_of_IV 
end


print roman_numeralize(9)
