def bubble_sort(array)
    return array if array.length <= 1
    loop do
        swapped = false
        (array.length - 1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end
        break if not swapped
    end

    array
end

p (bubble_sort([5, 6, 10, 7, 1, 56, 43, 105, 165]))
p (bubble_sort([5]))