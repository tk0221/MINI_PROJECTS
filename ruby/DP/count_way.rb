def count_way(n)
  return 0 if n < 0
	return 1 if n == 0
	return count_way(n-1) + count_way(n-2) + count_way(n-3)
end


def function(n, table)
  return 0 if n < 0
	return 1 if n == 0
	return table[n] if table[n]

	table[n] = function(n - 1, table) + function(n - 2, table) + function(n - 3, table)
	return table[n]

end

def count_way_DP(n)
  table = Hash.new

  function(n, table)
end


