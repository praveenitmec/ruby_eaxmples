def stock_picker(arr)
  stock = 0
  re_arr = []
  length = arr.length - 1
  for i in 0..length
    for j in 0..length
        temp_stock  = arr[j] - arr[i] if i < j
        if temp_stock && stock < temp_stock
          stock = temp_stock
          re_arr[0],re_arr[1] = i,j
        end
    end
  end

  return re_arr
end
puts stock_picker([17,3,6,9,15,16,6,1,10])