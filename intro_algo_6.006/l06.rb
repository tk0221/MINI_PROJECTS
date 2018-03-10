def counting_sort_arr(nums)
    arr = Array.new(nums.max+1, 0)
    (0...nums.size).each do |j|
        arr[nums[j]] += 1
    end
    output = []
    (0...arr.size).each do |i|
       while arr[i] != 0
           arr[i]-=1
           output << i
       end
    end
    return output
end


def counting_str_sort(str)
    str_arr = str.split('')
    arr = Array.new('z'.ord - 'A'.ord, 0)

    (0...str.size).each do |j|
        arr[str[j].ord-'A'.ord] +=1
    end
    output = []
    (0...arr.size).each do |i|
        while arr[i] != 0
            arr[i]-=1
            output << (i+65).chr
        end
    end
    return output
end

# O(n+k) 
