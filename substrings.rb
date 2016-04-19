def sub_string(text,arr)
  given_text = text.downcase.split(" ")
  ret_hsh = {}
  arr.each do |tester|
    count = 0
    given_text.each do |testee|
      count = count + 1 if testee.include?tester
    end
    ret_hsh[tester] = count if count > 0
  end 
  ret_hsh
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts sub_string("Howdy partner, sit down! How's it going?", dictionary)