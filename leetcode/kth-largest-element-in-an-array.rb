# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}

def find_kth_largest(nums, k)
    helper(nums, nums.size - k)
end
def helper(nums, k, l = 0, r = nums.size-1)
    return nums[l] if l == r
    piv = partition(nums, l, r)
    if piv == k
       return nums[piv]
    elsif k < piv
        helper(nums, k, l, piv-1)    
    else
        helper(nums, k, piv+1, r)
    end
end

def partition(arr, lo, hi)
    piv = arr[hi]
    i = lo
    
    (lo...hi).each do |j|
        if arr[j] <= piv
            arr[i], arr[j] = arr[j], arr[i]
            i += 1
        end
    end
    arr[i], arr[hi] = arr[hi], arr[i]
    return i
end
