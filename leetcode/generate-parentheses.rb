# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    res = []
    helper(n,0,0,"",res)
    return res
end

def helper(n, o, c, str, res)
    #p str # to see how it works
    if str.size == n*2
        res << str
        return
    end
    helper(n, o+1, c, str+"(", res) if o < n
    helper(n, o, c+1, str+")", res) if c < o
end
