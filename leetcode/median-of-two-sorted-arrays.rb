# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}

#80 ms and code is smaller
def find_median_sorted_arrays(nums1, nums2)
    len = nums1.size + nums2.size
    prev, curr = nil, nil
    (0..len/2).each do |i|
        if nums1.first && nums2.first
            if nums1.first < nums2.first
                prev, curr = curr, nums1.shift
            else
                prev, curr = curr, nums2.shift
            end
        else
            nums1, nums2 = nums2, nums1 if nums2.size > nums1.size
            prev, curr = curr, nums1.shift
        end
    end
    return len.even? ? (prev+curr)*1.0/2 : curr*1.0
end

#Runtime: 84 ms
def find_median_sorted_arrays_3(nums1, nums2)
    len = nums1.size + nums2.size
    
    prev, curr = nil, nil

    (0..len/2).each do |i|
        if nums1.first && nums2.first
            if nums1.first < nums2.first
                prev, curr = curr, nums1.first 
                nums1 = nums1.drop(1)
            else
                prev, curr = curr, nums2.first
                nums2 = nums2.drop(1)
            end
        else
            nums1, nums2 = nums2, nums1 if nums2.size > nums1.size
            prev, curr = curr, nums1.first
            nums1 = nums1.drop(1)
        end
    end
    return len.even? ? (prev+curr)*1.0/2 : curr*1.0
end

# 96 ms 100%
def find_median_sorted_arrays_2(nums1, nums2)
    len = nums1.size + nums2.size
    
    prev, curr = nil, nil

    (0..len/2).each do |i|
        if nums1.first && nums2.first
            if nums1.first < nums2.first
                prev = curr
                curr = nums1.first 
                nums1 = nums1.drop(1)
            else
                prev = curr
                curr = nums2.first
                nums2 = nums2.drop(1)
            end
        else
            nums1, nums2 = nums2, nums1 if nums2.size > nums1.size
            prev = curr 
            curr = nums1.first
            nums1 = nums1.drop(1)
        end
    end
    return len.even? ? (prev+curr)*1.0/2 : curr*1.0
end
