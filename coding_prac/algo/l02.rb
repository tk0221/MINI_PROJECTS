

def insertion_sort(arr)

    return arr if arr.size < 2
    for i in 1..arr.size-1 do
        
        j = i - 1
        tmp = arr[i] 
        while j >= 0 && arr[j] > tmp do
            arr[j+1] = arr[j]
            j -= 1
        end
        arr[j+1] = tmp
    end

    arr
end


s = Time.now
p insertion_sort([11,10,9,8,7,6,5,4,3,2,1])
puts (Time.now - s)*1000  #0.070


def merge_sort(arr)
    return arr if arr.size <= 1
    mid = arr.size/2
    l = arr[0...mid]
    r = arr[mid...arr.size]

    merge(merge_sort(l), merge_sort(r))
end

def merge(l, r)
    sorted = []
    until l.empty? || r.empty?
        l.first <= r.first ? sorted << l.shift : sorted << r.shift
    end
    sorted + l + r
end

s = Time.now
p merge_sort([11,10,9,8,7,6,5,4,3,2,1])
puts (Time.now - s)*1000 #0.059
    
