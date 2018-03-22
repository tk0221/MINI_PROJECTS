# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
    
    lo, hi = 0, nums.size - 1
    
    while lo < hi
        
        return nums[lo] if nums[lo] < nums[hi]
        
        mid = (lo + hi) / 2

        if nums[mid] > nums[hi]
            lo = mid + 1
        else
            hi = mid
        end
    end
end
