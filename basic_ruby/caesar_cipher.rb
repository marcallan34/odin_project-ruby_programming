def cipher(string, shift)
  letters = string.split(//) #splits string into array of letters
  letters.each do |x|
    number = x.ord

    if number.between?(97,122)
      number = number + shift
      if number > 122
        number = (number - 122) %26 + 96
      end
    elsif number.between?(65,90)
      number = number + shift
      if number > 90
        number = (number - 90) %26 +64
      end
    end
    print number.chr
  end

end
