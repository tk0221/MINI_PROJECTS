# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    
    hash = {}
    strs.each do |str|
        h = {}
        (0...str.size).each do |i|
            if h[str[i]].nil?
                h[str[i]] = 1
            else
                h[str[i]] += 1
            end
        end
        if hash[h].nil?
            hash[h] = [str]
        else
            hash[h] << str
        end
    end
    return hash.values
    
end
