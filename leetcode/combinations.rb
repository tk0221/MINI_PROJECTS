# future note : took me 30min..... should be less than 10min
# backtracking

# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
    res = []
    arr = Array.new(n) { |i| i + 1 }
    
    helper(arr, k, res)
    
    return res
end


def helper(arr, k, res, sofar=[])
   if sofar.size == k
       res << sofar
       return 
   end
    (0...arr.size).each do |i|
        helper(arr[i..-1], k, res, sofar + [arr[i]]) if sofar[-1] != arr[i]
    end
end
