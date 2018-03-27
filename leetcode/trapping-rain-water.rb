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
