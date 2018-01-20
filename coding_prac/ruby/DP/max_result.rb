def max_result(arr, max=nil, min=nil)
  return [max,min].max if arr.empty?
  
  if max
    a = max * arr[0]
    b = max / arr[0]
    c = max + arr[0]
    d = max - arr[0]
    e = min * arr[0]
    f = min / arr[0]
    g = min + arr[0]
    h = min - arr[0]
    max = [a,b,c,d,e,f,g,h].max
    min = [a,b,c,d,e,f,g,h].min

    max_result(arr[1..-1], max, min)
  else
    max_result(arr[1..-1], arr[0], arr[0])
  end

end


puts max_result([1,12,3])
puts max_result([1,12,-3])
puts max_result([1,1])
puts max_result([-1,1])
puts max_result([])
puts max_result([1,1,1,1,1,1,1,1,1,10])

