# @param {Integer[]} nums
# @param {Integer} k
# @return {Float[]}

# Time limit exceeded
def median_sliding_window(nums, k)
    return nums.each_with_index {|val, i| nums[i] = val * 1.0 } if nums.size <= 1 or k == 1
    res = []
    (0..nums.size - k).each do |i|
        karry = nums[i..i+k-1].sort        
        res << get_median(karry)
    end
    return res
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
