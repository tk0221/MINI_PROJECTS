# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
    
    matrix[0] ? matrix.shift + spiral_order(matrix.transpose.reverse) : []
    
end
