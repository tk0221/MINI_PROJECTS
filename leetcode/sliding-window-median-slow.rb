# @param {Integer[]} nums
# @param {Integer} k
# @return {Float[]}

# 568ms

# what needs to be improve from code below. 
# form karry without sort, which use heap struct 
def median_sliding_window(nums, k)
    return nums.each_with_index {|val, i| nums[i] = val * 1.0 } if nums.size <= 1 or k == 1
    res = []
    karry = nums[0..k-1].sort
    res << get_median(karry)
    
    (1..nums.size - k).each do |i|
        karry.delete_at(karry.index(nums[i-1]))
        karry = binsert(karry , nums[i+k-1])
        res << get_median(karry)
    end
    return res
end

def binsert(arr, target)
    lo, hi = 0, arr.size - 1
    while lo <= hi
        mid = (lo+hi)/2
        if arr[mid] < target
            lo = mid + 1
        elsif arr[mid] > target
            hi = mid - 1
        else
            hi -= 1
        end
    end
    return arr[0...lo] + [target] + arr[lo..-1]
end
        
def get_median(arr)
    return arr if arr.size <= 1
    mid = arr.size / 2 
    if arr.size.even?
        return (arr[mid] + arr[mid-1]) * 1.0 / 2
    else
        return arr[mid] * 1.0
    end
end
