class TN
  attr_accessor :val, :left, :right

	def initialize(val = nil)
	  @val = val
		@left, @right = nil, nil
	end
end


def minBST(arr, s, e)
  if e < s
	  return nil
	end

	mid = (s+e)/2
	n = TN.new(arr[mid])
	n.left = minBST(arr, s, mid - 1)
	n.right = minBST(arr, mid + 1, e)

	return n
end


def createMinBST(arr)
  return minBST(arr, 0, arr.length - 1)
end


