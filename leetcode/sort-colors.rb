# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)

    #DNF, 3way partition
    
    i = j = 0
    (0...nums.size).each do |k|
        v = nums[k]
        nums[k] = 2
        if v < 2
            nums[j] = 1
            j+=1
        end
        if v == 0
            nums[i] = 0
            i+=1
        end
    end
end

#https://leetcode.com/problems/sort-colors/description/
