def bubble_sort(arr)
    swap = -1
    while swap != 0
        swap = 0
        for i in 0..(arr.length -2) do

            if (arr[i] > arr[i+1])
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swap += 1
            end
        end
    end
    output = arr.join(", ")
    return "[#{output}]"
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
