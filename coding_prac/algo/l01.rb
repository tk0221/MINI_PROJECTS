puts "lec 01"

def peak_finder(arr)
    return nil if arr.nil?

    peak = arr[0]

    arr.each { |x| peak = x if peak > x }

    return peak
end

s = Time.now
puts peak_finder([1,7,3,2,4,3,10,2,1,2,3,6,5])
puts (Time.now - s)*1000 #0.0778

def peaks_finder(arr)
    return nil if arr.nil?

    picks = []
    for i in 1..arr.length-2 do
        if arr[i] > arr[i + 1] && arr[i] > arr[i-1]
            picks << arr[i]
        end
    end
    return picks
end


s = Time.now
puts peaks_finder([1,7,3,2,4,3,10,2,1,2,3,6,5])
puts (Time.now - s)*1000 #0.118993



def peak_finder2(arr)
    return nil if arr.nil?
    return arr if arr.length == 1

    mid = arr.length/2

    if arr[mid] < arr[mid+1]
        peak_finder2(arr[mid+1..-1])
    elsif arr[mid] < arr[mid-1]
        peak_finder2(arr[0..mid-1])
    else
        return arr[mid]
    end
end

s = Time.now
puts peak_finder2([1,2,3,4,5,6,7])
puts (Time.now - s)*1000 #0.040


def peak_finder_2d(arr)

end

s = Time.now
puts peak_finder_2d([[10,8,10,10],
                     [14,13,12,11],
                     [15,9,12,21],
                     [16,17,19,20])
puts (Time.now - s)*1000
