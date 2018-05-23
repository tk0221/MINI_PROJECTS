# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(data)
    hash = {}
    
    data.each do |addr|
        v, domain = addr.split(" ")
        v = v.to_i
        subd = domain.split(".").reverse
        tmp = ""
        subd.each do |domain|
            if tmp == ""
                tmp = domain + tmp
            else
                tmp = domain + "." + tmp
            end
            hash[tmp] = hash[tmp].nil? ? v : hash[tmp]+v
        end
    end

    hash.map{|k, v| v.to_s + " " + k }
    
end
