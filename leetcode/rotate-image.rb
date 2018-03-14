
def rotate_60ms(matrix)
    matrix.reverse!
    (0...matrix[0].size).each do |i|
        (0...i).each do |j|
            matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j] if i != j
        end
    end
    return matrix
end

def rotate_36ms(matrix)
    matrix.reverse!
    (0...matrix[0].size).each do |i|
        (0...i).each do |j|
            if i != j
                matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
            end
        end
    end
    return matrix
end

def rotate_40ms(matrix)
    matrix.reverse!
    (0...matrix[0].size).each do |i|
        (0...i).each do |j|
            if i != j
                matrix[i][j] ^= matrix[j][i]
                matrix[j][i] ^= matrix[i][j]
                matrix[i][j] ^= matrix[j][i]
            end
        end
    end
    return matrix
end
