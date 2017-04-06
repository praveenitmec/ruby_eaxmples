def bubble_sort(arr)
  size = arr.size
  until size == 0
    tmp = 0
    (1..size-1).each do |i|
      if arr[i - 1] > arr[i]
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
        tmp = i
      end
    end
    size = tmp
  end
  arr
end

puts bubble_sort([2,44,33,1,5,66,77])
