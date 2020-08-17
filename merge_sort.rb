def merge_sort(array)
  return array if array.size <= 1

  mid = array.size / 2
  left = merge_sort(array[0..mid-1])
  right = merge_sort(array[mid..array.size])

  merge(left, right)
end

def merge(left, right)
  sorted_array = []
  until left.empty? || right.empty?
    sorted_array << (left.first <= right.first ? left.shift : right.shift)
  end
  sorted_array + left + right
end

array = [15, 6, 7, 3, 1, 2, 4, 5, 200, 5, 1]

puts merge_sort(array)