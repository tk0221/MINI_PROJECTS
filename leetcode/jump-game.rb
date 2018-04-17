# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    farcango = nums.first
    (0...nums.size).each do |i|
        return false if i > farcango
        farcango = [nums[i] + i, farcango].max
    end    
    return true
end
