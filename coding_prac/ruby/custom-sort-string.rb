# "str".sort by value in hash table 
# @param {String} s
# @param {String} t
# @return {String}
def custom_sort_string(s, t)
    h = h_generate(s)
    return t.sort if h.nil?

    # "abcd" => [h["a"], h["b"]...] 
    str_arr = []
    (0...t.size).each do |i|
        str_arr << h[t[i]]
    end
    str_arr.sort!
    
    #[-3,-2,-1...] => "cba..."
    res =""
    (0...str_arr.size).each do |i|
        res+=h.key(str_arr[i])
    end
    return res
    
    
end

def h_generate(s = "")
    return nil if s.empty?
    h = {}
   
    #gen {"a"=>0, "b"=>1,...} 
    (0...26).each do |i|
        h[(97+i).chr] = i 
    end
    #edit if "cba" {"c"=>-3,"b"=>-2, "a"=>-1, "d"=>3"...}
    (0...s.size).each do |i|
        h[s[i]] = i - s.size
    end
    
    return h
end
