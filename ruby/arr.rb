def setZero(arr)
	row = Array.new(arr.length)
	column = Array.new(arr[0].length)

	for i in 0..arr.length - 1 
		for j in 0..arr[0].length - 1 
			row[i], column[j] = 0, 0 if arr[i][j] == 0
		end
	end
			
	
end

temp = [[1,1,1,1],
				[1,1,1,1],
				[1,1,0,1],
				[1,1,1,1]]

setZero(temp)
