# @param {Integer[][]} m
# @return {Integer}
def find_circle_num(m)
    hash = {}
    zone = 0
    m.each_with_index do |nums, i|
        hash[i] = nums
    end
    while !hash.empty?
        kv = hash.shift
        stack = []
        stack << kv[1]
        while !stack.empty?
            arr = stack.shift
            (0...arr.size).each do |i|
                if arr[i] == 1
                    stack << hash[i] if hash[i]
                    hash.delete(i)
                end
            end
        end
        zone += 1
    end
    return zone
end
