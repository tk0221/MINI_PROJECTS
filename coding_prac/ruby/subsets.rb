



def subsets(nums, ans = [])
    ans << nums unless ans.include?(nums)
    (0...nums.size).each do |i|
       subsets(nums-[nums[i]], ans)
    end
    return ans
    



end


def subsets2(arr)

  return [[]] if arr.empty?

  old_subsets = subsets(arr.drop(1))

  new_subsets = []

  old_subsets.each do |subset|

    new_subsets << subset + [arr.first]

  end

  old_subsets + new_subsets

end

#iter
def subsets3(arr)
    return arr if arr.nil?
    ans = []
    (0...1<<arr.size).each do |i|
        b = ("%b" % i).rjust(arr.size, '0')
        tmp = []
        (0...b.size).each do |j|
            tmp << arr[j] if b[j] == "1"
        end
        ans << tmp 
    end

    return ans
end                                                                                                                                                            
