# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# 40ms
def two_sum(nums, t)
    h = {}
    nums.each_with_index do |n, i|
        h[n] = i
    end
    
    nums.each_with_index do |n, i|
        j = h[t - nums[i]]
        return [i, j] if j && j != i
    end
end

# 300ms
def two_sum2(nums, target)
    
    (0...nums.size).each do |i|
        
        j = nums.index(target - nums[i])
        
        return [i, j] if j && i != j
    end
    
end
