# @param {Integer} k
# @param {Integer} x
# @return {Integer[]}
def find_closest_elements(arr, k, x)
    q = arr[0..k-1]
    (k...arr.size).each do |i|
        if (x - arr[i]).abs < (x - q.first).abs
            q = q.drop(1)
            q.push(arr[i])
        end
    end
    return q
end


def fce(arr, k, x)
    lo, hi = 0, k-1
    (k...arr.size).each do |i|
        if (x - arr[i]).abs < (x - arr[lo]).abs
            lo +=1
            hi +=1
        end
    end
    return arr[lo..hi]
end

