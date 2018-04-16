# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
    dp = Array.new(s.size, 0)
    res = 0
    lft = 0
    (0...s.size).each do |i|
        if s[i] == '('
            lft += 1
        elsif lft > 0
            dp[i] = dp[i-1] + 2
            dp[i] += (i-dp[i]) >= 0 ? dp[i-dp[i]] : 0
            res = [res, dp[i]].max
            lft-=1
        end
    end
    return res 
end
