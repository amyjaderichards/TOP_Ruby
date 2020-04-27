def merge_sort(arr)
    return list is list.size < 2

    left = merge_sort(list[0..list.size / 2 - 1])
    right = merge_sort(list[(list.size / 2)..-1])

    merge(left, right)
end


def merge(left, right)
    return right if left.empty?
    return left if right.empty?
    return [right[0]] + merge(right[1..-1], left) if right[0] <= left[0]

    [left[0]] + merge(right, left[1..-1])
end



puts 'list: #{ary = rand(1..15).times.map { rand(50) }}'
puts 'sorted list: #{merge_sort(arr)}'