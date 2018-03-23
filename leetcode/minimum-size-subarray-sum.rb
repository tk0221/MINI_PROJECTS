# @param {Integer} s
# @param {Integer[]} nums
# @return {Integer}

# contiguous is keyword!
def min_sub_array_len(s, nums)
    start, minlen = 0, nums.size + 1
    sum = 0
    (0...nums.size).each do |i|
        
        sum += nums[i]
        
        while sum >= s
            minlen = [minlen, i - start + 1].min
            
            sum -= nums[start]
            start+=1
        end
    end
    
    return minlen == nums.size+1 ? 0 : minlen
end
