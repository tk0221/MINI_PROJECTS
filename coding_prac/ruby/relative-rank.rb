def find_relative_ranks(nums)

    ranking = ["Gold Medal", "Silver Medal", "Bronze Medal"] + ('4'..nums.size.to_s).to_a
    res, sorted = [], nums.sort.reverse
    nums.each do |n|
        res << ranking[sorted.index(n)]
    end
    return res
    
end


def find_relative_ranks_272ms(nums)
    res, sorted = [], nums.sort.reverse

    nums.each do |n|
        if sorted.index(n) < 3
            res << "Gold Medal" if sorted.index(n) == 0
            res << "Silver Medal" if sorted.index(n) == 1
            res << "Bronze Medal" if sorted.index(n) == 2  
        else
            res << (sorted.index(n)+1).to_s
        end
    end
    return res
end

# @param {Integer[]} nums
# @return {String[]}
# 188ms....
def find_relative_ranks_188ms(nums)
    res, sorted = [], nums.sort.reverse
    nums.each do |n|
        res << (sorted.index(n)+1).to_s
    end
    res[res.index("1")] = "Gold Medal" if res.index("1")
    res[res.index("2")] = "Silver Medal" if res.index("2")
    res[res.index("3")] = "Bronze Medal" if res.index("3")
    return res
end
