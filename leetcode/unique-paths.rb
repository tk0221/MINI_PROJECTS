# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    (1..m+n-2).reduce(1, :*) / (1..m-1).reduce(1, :*) / (1..n-1).reduce(1, :*)
end
