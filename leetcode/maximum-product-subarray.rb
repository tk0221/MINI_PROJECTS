# @param {Integer[]} nums
# @return {Integer}

def max_product(nums)
    return [] if nums.empty?
    imax = nums[0]
    min, max = imax,imax
    
    (1...nums.size).each do |i|
        max , min = min, max if nums[i] < 0
        min = [ min*nums[i], nums[i]].min
        max = [ max*nums[i], nums[i]].max
        imax = [max, imax].max
    end
    return imax    
end
