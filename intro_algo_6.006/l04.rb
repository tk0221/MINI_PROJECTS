before = [4,1,3,2,16,9,10,14,8,7]
after = [16,14,10,8,7,9,3,2,4,1]

def root(arr)
    return arr.first
end

def parent(arr, i)
    return arr[i/2]
end

def left(i)
    return 2*i
end

def right(i)
    return 2*i+1
end

def max_heapify(arr, i)
    l = left(i)
    r = right(i)
    largest = i
    
    if l <= arr.size && arr[l-1] > arr[i-1]
        largest = l
    end

    if r && r <= arr.size && arr[r-1] > arr[largest-1]
        largest = r
    end

    if largest != i
        arr[i-1], arr[l-1] = arr[l-1], arr[i-1] if largest == l
        arr[i-1], arr[r-1] = arr[r-1], arr[i-1] if largest == r
        arr = max_heapify(arr, largest)
    end
    return arr

end

def build_max_heap(arr)
    ((arr.size)/2).downto(1) do |i|
        arr = max_heapify(arr, i)
    end
    return arr
end
