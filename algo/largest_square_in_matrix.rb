require 'pp'
def search_max_square(m)
    res = 0
    cache = Array.new(m.size, Array.new(m.size, 0))

    (0...m.size).each do |i|
        (0...m.size).each do |j|
            if i == 0 or j == 0
                cache[i][j] = m[i][j]
            elsif m[i][j] != 0
                cache[i][j] = m[i][j] + [cache[i-1][j-1],
                                         cache[i-1][j],
                                         cache[i][j-1]].min
            else
                cache[i][j] = 0
            end
            p [i,j,cache[i][j]] if cache[i][j] > res
            res = cache[i][j] > res ? cache[i][j] : res
            
        end
    end 

    return res
end

matrix1 = [[1,1,1,0,0],
           [0,1,1,1,1],
           [1,1,1,1,0],
           [1,1,1,1,1],
           [0,1,1,1,0]]

pp matrix1
p search_max_square(matrix1)

matrix2 = [[1,1,1,0,0,1,1,1,1,1],
           [0,1,1,1,1,1,1,1,1,1],
           [1,1,1,1,0,1,1,1,1,1],
           [1,1,1,1,1,1,1,1,1,1],
           [0,1,1,1,0,1,1,1,1,1],
           [0,0,0,0,0,0,0,0,0,0],
           [0,0,0,0,0,0,0,0,0,0],
           [0,0,0,0,0,0,0,0,0,0],
           [0,0,0,0,0,0,0,0,0,0],
           [0,0,0,0,0,0,0,0,0,0]] 

pp matrix2
p search_max_square(matrix2)


matrix3 = [[1,1,1,0,0,1,1,1,1,1],
           [0,1,1,1,1,1,1,1,1,1],
           [1,1,1,1,0,1,1,1,1,1],
           [1,1,1,1,1,1,1,1,1,1],
           [0,1,1,1,0,1,1,0,1,1],
           [0,0,0,0,0,0,0,0,0,0],
           [0,0,0,0,0,0,0,0,0,0],
           [0,0,0,0,0,0,0,0,0,0],
           [0,0,0,0,0,0,0,0,0,0],
           [0,0,0,0,0,0,0,0,0,0]] 

pp matrix3
p search_max_square(matrix3)


