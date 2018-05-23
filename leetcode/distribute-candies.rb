# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(c)
    # n = candies.size
    # hash = candies.group_by{|i| i}
    # return [hash.keys.size, n/2].min
    return [c.uniq.size, c.size/2].min
end
