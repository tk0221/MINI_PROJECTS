# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    a = hash(s)
    b = hash(t)
    return a == b
end

def hash(s)
    h = {}
    (0...s.size).each do |i|
        if h[s[i]].nil?
            h[s[i]] = 1
        else
            h[s[i]]+=1
        end
    end
    return h
end
