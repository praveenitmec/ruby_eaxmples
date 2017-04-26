#Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

def get_products_of_all_ints_except_at_index(ary)
  result_ary = []
  (0..ary.length-1).each do |index|
    t = ary[index]
    result_ary << (ary.select{|a| a!=t }).reduce(:*)
  end
  result_ary
end

puts get_products_of_all_ints_except_at_index([1,2,4,5,3])
