def roman_numeralize(number) 
  roman_numerals = {1000 => "M", 900 => "CM",  500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
                    50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}
  roman_numeral_array = []
  
  roman_numerals.each do |keynum, letter|
    if (number/keynum >=1 )
      roman_numeral_array << letter * (number/keynum)
      number = number.to_s[1..-1].to_i
    end
  end
  roman_numeral_array.join("")
end


# def roman_unnumeralize(letters)
  
# end

# puts roman_unnumeralize("mxlix")
p roman_numeralize(3999)
# puts roman_numeralize(roman_unnumeralize("v"))
# puts roman_unnumeralize(roman_numeralize(1049))
