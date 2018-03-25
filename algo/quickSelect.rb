def quick_select(arr, k, l = 0, r = arr.size-1)
    if l == r
        return arr[l]
    end
    piv = partition(arr, l, r)
    if k == piv  #piv is index number, k is kth so off by 1
        return arr[k]
    elsif k < piv
        return quick_select(arr,k, l, piv - 1)
    else
        return quick_select(arr,k, piv + 1, r)
    end
end

def partition(arr, lo, hi)
    piv = arr[hi]
    i = lo
    (lo...hi).each do |j|
        if arr[j] <= piv
            arr[i], arr[j] = arr[j], arr[i]
            i += 1
        end
    end
    arr[i], arr[hi] = arr[hi], arr[i]
    return i
end

def quick_sort(arr, lo, hi)
    if lo < hi
        p = partition(arr, lo, hi)
        quick_sort(arr, lo, p - 1)
        quick_sort(arr, p + 1, hi)
    end
    arr
end

def gen_arr(size, limit=100)
    Array.new(size) { |i| (rand*1000).to_i % limit }
end






arr1 = [10,9,8,7,6,5,4,3,2,1,11,15,14,13,12]

p quick_sort(arr1, 0, arr1.size-1)


p quick_select([9,4,3,1,2,7,8,5,10,6], 7)
p quick_select([1],1)

