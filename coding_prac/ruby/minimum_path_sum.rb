def min_path_sum(grid)
    return grid unless grid
    rows = grid.size
    cols = grid[0].size
    #top row
    for i in 1...cols
        grid[0][i] = grid[0][i] + grid[0][i-1]
    end
    #left cols
    for i in 1...rows
        grid[i][0] = grid[i][0] + grid[i-1][0]
    end
    #[1][1] -> [m][n]
    for j in 1...rows
        for k in 1...cols
            up = grid[j-1][k] 
            left = grid[j][k-1] 
            grid[j][k] = grid[j][k] + [up, left].min
        end
    end
    
    return grid[rows-1][cols-1]
end
