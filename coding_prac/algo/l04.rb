


arr = [16,14,10,8,7,9,3,2,4,1]

def root(arr)
    return arr[0]
end

def parent(arr, i)
    return arr[i/2]
end

def left(arr, i)
    return arr[(2*i)-1]
end

def right(arr, i)
    return arr[(2*i+1)-1]
end

def max_heapify(arr, i)
    l = 2*i-1
    r = 2*i
    large = arr[i]
    if l < arr.size && arr[l] > arr[i]
        large = arr[l]
    end
    if r < arr.size && arr[r] > large
        large = arr[r]
    end
    if large != arr[i]
        tmp = arr[i]
        arr[i] = large
        large == arr[l] ? arr[l] = tmp : arr[r] = tmp
    end
    return arr
end

def build_max_heap(arr)
    (arr.size/2).downto(0) do |i|
        arr = max_heapify(arr, i)
    end
    return arr
end
