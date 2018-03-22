# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target, cnt = 0)

    lo, hi = 0, nums.size-1

    while lo <= hi do
        mid = lo + (hi-lo)/2
        if nums[mid] < target
            lo = mid + 1
        else
            hi = mid -1
        end
    end
    
    return lo
end
