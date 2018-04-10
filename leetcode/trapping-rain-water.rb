# @param {Integer[]} height
# @return {Integer}
def trap(nums)
    water = 0
    a, b = 0, nums.size - 1
    maxa, maxb = 0, 0
    
    while a <= b
        maxa = [maxa, nums[a]].max
        maxb = [maxb, nums[b]].max
        if maxa < maxb
            water += (maxa-nums[a])
            a+=1
        else
            water += (maxb-nums[b])
            b-=1
        end
    end
    return water
end
#need more practice...

# @param {Integer[]} height
# @return {Integer}
def trap(height)
    left, right = [], []
    max = -1
    (0...height.size).each do |i|
        max = height[i] > max ? height[i] : max
        left << max
    end
    height = height.reverse
    max = -1
    (0...height.size).each do |i|
        max = height[i] > max ? height[i] : max
        right << max
    end
    right = right.reverse
    height = height.reverse
    ans = 0
    (0...height.size).each do |i|
        ans += [right[i], left[i]].min - height[i]
    end
    return ans
end
