def bubble_sort(array)
  counter = array.length - 1
  while counter > 0 
    1.upto(counter).each {|n|
      if array[n-1] < array[n]
        array[n-1],array[n] = array[n],array[n-1]
      end
    }
    counter =counter -1
  end
return array
end

def bubble_sort_by(arr)
  return unless block_given?
  counter = arr.length - 1
  while counter > 0 
    1.upto(counter).each {|number|
      if ( yield(arr[number-1],arr[number]) > 0)
        arr[number-1], arr[number]= arr[number],arr[number-1]
      end
    }
    counter =counter -1
  end
  return arr
end

#normal bubble sort
puts bubble_sort([3,44,5,12,66,6])

#bubble sort for string in ascending order using blocks
puts bubble_sort_by(["hi","hello","praveen"]) { |left,right|
  left.length - right.length 
}

#bubble sort for int in ascending order using blocks
puts bubble_sort_by([3,44,5,12,66,6]) { |left,right|
  left - right
}

#bubble sort for int in desscending order using blocks
puts bubble_sort_by([3,44,5,12,66,6]) { |left,right|
  right - left
}

#bubble sort for string in descending order using blocks
puts bubble_sort_by(["hi","hello","praveen"]) { |left,right|
  right.length - left.length
}
