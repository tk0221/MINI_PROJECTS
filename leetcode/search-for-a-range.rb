# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    lo, hi = 0, nums.size - 1
    
    while lo < hi
        mid = (lo+hi)/2
        if nums[mid] < target
            lo = mid + 1
        else
            hi = mid
        end        
    end
    
    return [-1, -1] if nums[lo] != target
    
    (lo...nums.size).each do |i|
       if nums[i] == target 
           hi = i
       end
    end
    return [lo,hi]    
end
