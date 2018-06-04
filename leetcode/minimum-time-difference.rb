# @param {String[]} time_points
# @return {Integer}
def find_min_difference(tp)
    arr = []
    min = 1440
    tp.each do |time|
        t, h = time.split(':')
         arr << Integer(t.to_i)*60 + Integer(h.to_i)
    end
    arr.sort!
    (0...arr.size).each do |i|
      if i == 0 
          tmp = (1440-arr[i-1]).abs + arr[i]
      elsif arr[i] == arr[i-1]
          tmp = 0
      else
          tmp = arr[i] - arr[i-1]
      end
        min = [tmp, min].min
    end
    min
end
