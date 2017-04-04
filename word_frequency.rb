puts "enter the string"
str = gets.chomp

wrd_frequencies = Hash.new(0)

str.scan(/\w+/).each{|wrd| wrd_frequencies[wrd] += 1}

wrd_frequencies.each{|word, count| puts "#{word}-->#{count}"}
