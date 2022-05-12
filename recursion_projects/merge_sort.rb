def merge_sort(array)
  return array if array.size == 1


  left_array = merge_sort(array.slice!(0, (array.length / 2).floor ))
  right_array = merge_sort(array)

  results = []
  until left_array.empty? || right_array.empty?
    left_array[0] > right_array[0] ? results << right_array.shift : results << left_array.shift
  end
return left_array.empty? ? results += right_array : results += left_array

end

p merge_sort([4, 3, 8, 1, 6, 2, 7, 5])