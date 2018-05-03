# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    
    lo, hi = 0, nums.size-1

    while lo <= hi do
        mid =  (hi+lo)/2
        if nums[mid] == target
            return mid
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
    
    return nums[lo] == target ? lo : -1
end
