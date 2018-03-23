# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
    
    lo, hi = 0, nums.size - 1
    
    while lo <= hi
        
        mid = (lo + hi) / 2
        if nums[mid] > nums[hi]
            lo = mid + 1
        elsif nums[mid] < nums[lo]
            hi = mid
        else
            hi-=1
        end
    end 
    return nums[lo]
end
