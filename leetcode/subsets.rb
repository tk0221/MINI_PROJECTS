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

def subsets2_1(arr)
#separate cleating b string and access it
    return arr if arr.nil?
    str_arr = []
    result = []
    (0...1<<arr.size).each do |i|
        str_arr << ("%b" % i).rjust((arr.size), '0')
    end
    str_arr.each do |b|
        tmp = []
        (0...b.size).each do |j|
            tmp << arr[j] if b[j] == "1"
        end
        result << tmp
    end
    return result
end


def subsets3(nums)
    return [[]] if nums.empty?
    old = subsets3(nums.drop(1))
    new = []
    old.each do |sub|
        new << sub + [nums.first]
    end
    return new + old
end


arr = [1,3,5,7,9,2,4,6,8,10,11,12,13,14,15,16,17]

start = Time.now
#subsets(arr) #TLE
p (Time.now - start)*1000


start = Time.now
subsets2(arr)
p (Time.now - start)*1000

start = Time.now
subsets2_1(arr)
p (Time.now - start)*1000


start = Time.now
subsets3(arr)
p (Time.now - start)*1000
