# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    lo, hi = 0, nums.size - 1
    while nums[lo] + nums[hi] != target 
        if nums[lo] + nums[hi] > target
            hi -= 1
        else
            lo += 1
        end
    end   
    return [lo+1, hi+1]
end
