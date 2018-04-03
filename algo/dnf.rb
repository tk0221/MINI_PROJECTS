def three_way_partition(nums, target)
    i, j = 0, 0
    
    n = nums.size - 1
    
    while j<= n
        if nums[j] < target
            nums[i], nums[j] = nums[j], nums[i]
            i += 1
            j += 1
        elsif nums[j] > target
            nums[j], nums[n] = nums[n], nums[j]
            n -= 1
        else
            j += 1
        end
    end
    return nums
    
    
end

# https://en.wikipedia.org/wiki/Dutch_national_flag_problem
p [123,2,1,5,55,5,2,35454,3,4,3,5,4,2,75,4,3,3]
p three_way_partition([123,2,1,5,55,5,2,35454,3,4,3,5,4,2,75,4,3,3], 5)
