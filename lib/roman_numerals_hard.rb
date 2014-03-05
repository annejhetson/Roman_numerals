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


def roman_unnumeralize(letters)
  laremun_namor = {"CM"=>900, "CD"=>400, "XC"=>90, "XL"=>40, "IX"=>9, "IV"=>4,  
                  "M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "V"=>5,"I"=>1}
  letter_value = 0
  
  laremun_namor.each do |letter, valnum|
    3.times do
      if (letters.upcase.include?(letter))
        letter_value = letter_value + valnum
        letters = letters.upcase.sub letter, ""
        # if (letters.upcase.include?(letter))
        #   letter_value = letter_value + valnum
        #   letters = letters.sub letter, ""
        #   if (letters.upcase.include?(letter))
        #     letter_value = letter_value + valnum
        #     letters = letters.sub letter, ""
        #   end
        # end
      end
    end
  end 
  letter_value
end


p roman_unnumeralize("mmmcmxcviii")
p roman_numeralize(3999)
p roman_numeralize(roman_unnumeralize("v"))
p roman_unnumeralize(roman_numeralize(1049))
