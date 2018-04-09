# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    return false if s.size != t.size
    a, b = [], []
    ha, hb = {}, {}
    cnt1, cnt2 = 0, 0
    (0...s.size).each do |i|
        if ha[s[i]].nil?
            cnt1 += 1
            ha[s[i]] = cnt1
            a << ha[s[i]]
        else
            a << ha[s[i]]
        end
        if hb[t[i]].nil?
            cnt2 += 1
            hb[t[i]] = cnt2
            b << hb[t[i]]
        else
            b << hb[t[i]]
        end
    end
    return a == b
end
