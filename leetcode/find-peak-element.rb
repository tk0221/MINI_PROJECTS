# @param {Integer[]} nums
# @return {Integer}

def find_peak_element(nums)
    before = nums[0]
    ans = 0
    (1...nums.size).each do |n|
        if before < nums[n]
            if nums[n+1].nil?
                ans = n
            elsif nums[n+1] < nums[n]
                ans = n
            end
        end
        before = nums[n]
    end
    return ans
end
