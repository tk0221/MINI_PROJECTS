def three_sum_closest(nums, target)
    nums.sort!
    res = nums[0] + nums[nums.size-2] + nums[nums.size-1]
    (0...nums.size-1).each do |i|
        j, k = i+1, nums.size - 1
        while j < k
            sum = nums[i] + nums[j] + nums[k]
            if sum == target
                return sum
            end
            if (sum-target).abs < (res - target).abs
                res = sum
            end
            if sum < target
                j+=1
            elsif sum > target
                k-=1
            end
        end
    end
    return res
end
