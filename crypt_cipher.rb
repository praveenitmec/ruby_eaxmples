# Methods Learned rotate,zip,map,gsub,code_point,ord,chr
def crypt(text,shift)
	albh_sm = ('a'..'z').to_a
	albh_lg = ('A'..'Z').to_a
	rev_sm = albh_sm.rotate(shift%26)
	rve_lg = albh_lg.rotate(shift%26)
	albh = albh_sm + albh_lg
	rev = rev_sm + rve_lg
	replacement = albh.zip(rev).to_h
	abc = text.split('').map {|x| replacement[x]||x}.join
	puts text.gsub(/[a-z]/,replacement).gsub(/[A-Z]/,replacement)
	return abc
end

puts crypt("What a string!", 5)

 "======================================================================================="
def crypt2(text, shift)
	text.each_codepoint.map{ |c|
		if (c.between?('a'.ord, 'z'.ord) || c.between?('A'.ord, 'Z'.ord))
		    new_c =  c + (shift % 26)
		else
			new_c = c
		end
		 #if ((c.between?('a'.ord, 'z'.ord) && new_c > 'z'.ord) || ('c'.between?('A'.ord, 'Z'.ord) && new_c > 'Z'.ord))
		 if ((c.between?('a'.ord, 'z'.ord) && new_c > 'z'.ord) || (c.between?('A'.ord, 'Z'.ord) && new_c > 'Z'.ord))
		 	new_c -= 26
		 end
		 new_c.chr
	}.join
end



puts crypt2("What a string!", 5)

 "======================================================================================="
def lowercase?(char)
  char >= 97 && char <= 122
end

def upcase?(char)
  char >= 65 && char < 97
end

def letter?(char)
  lowercase?(char) || upcase?(char)
end

def _shift(char, times)
  letter = char - (upcase?(char) ? 65 : 97)
  letter = (letter + times) % 26
  letter += upcase?(char) ? 65 : 97
  letter.chr
end

def caesar_cipher(text, times)
  transformed = ''
  text.each_byte do |char|
    transformed += if letter?(char)
                     _shift(char, times)
                   else
                     char.chr
                   end
  end
  transformed
end

puts caesar_cipher('What a string!', 5)
 "======================================================================================="
def caesar_cipher2 string, shift
  cipher = ''

  string.each_byte do |c|

    # upper case
    if c > 64 && c < 91
      cipher << ((c - 65 + shift) % 26 + 65).chr
    # lower case
    elsif c > 96 && c < 123
      cipher << ((c - 97 + shift) % 26 + 97).chr
    # non-letter
    else
      cipher << c.chr
    end

  end

  return cipher

end

puts caesar_cipher2('What a string!', 5)
 "======================================================================================="





