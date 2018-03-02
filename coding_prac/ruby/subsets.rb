# TLE 
def subsets(nums, ans = [])
    ans << nums unless ans.include?(nums)
    (0...nums.size).each do |i|
       subsets(nums-[nums[i]], ans)
    end
    return ans
end

#iter
def subsets2(arr)
    return arr if arr.nil?
    ans = []
    (0...1<<arr.size).each do |i|
        b = ("%b" % i).rjust(arr.size, '0') #rjust "0" -> "0000"
        tmp = []
        (0...b.size).each do |j|
            tmp << arr[j] if b[j] == "1"
        end
        ans << tmp 
    end

    return ans
end                                                                                                                                                            
