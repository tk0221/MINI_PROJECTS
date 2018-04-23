# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
    cj = nj = level = 0
    (0...nums.size).each do |i|
        if i - 1 == cj
            level+=1
            cj = nj
        end
        nj = [nj, i+nums[i]].max
    end
    return level
end
