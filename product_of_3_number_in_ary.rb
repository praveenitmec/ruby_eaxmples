#Given an array of integers, find the highest product you can get from three of the integers.

def product_of_3_number_in_ary(int_ary)
  if int_ary.length < 3
    return "please enter array of length more than 3"
  end

  new_ary = (int_ary.select{|a| a!=0 }).sort.reverse
  n_length = new_ary.length-1
  puts new_ary
  return  [(new_ary[0]*new_ary[1]*new_ary[2]), (new_ary[0]*new_ary[n_length]*new_ary[n_length-1])].max

end

puts product_of_3_number_in_ary([1,2,4,5,6,7,8,-10,-3])
