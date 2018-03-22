# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
    return false if nums.empty?
    lo, hi = 0, nums.size - 1
    
    while lo <= hi
        mid = (lo + hi) / 2
        if nums[mid] == target
            return true
        elsif nums[mid] > nums[hi] #rotated
            if nums[mid] > target && nums[lo] <= target
                hi = mid
            else
                lo = mid + 1
            end
            
        elsif nums[mid] < nums[hi] #inorder
            if nums[mid] < target && nums[hi] >= target
                lo = mid + 1
            else
                hi = mid
            end
        else
            hi -= 1
        end
    end
    
    nums[lo] == target ? true : false
     
end
