class TN #TreeNode
  attr_accessor :val, :left, :right

	def initialize(val=nil)
	  @val = val
		@left = nil
		@right = nil
	end

end


def get_height(root)
  if root.nil?
	  return 0
	end

	l = get_height(root.left)
	r = get_height(root.right)

	return l >= r ? l + 1 : r + 1
end

def is_balanced(root)
  return true if root.nil?

	diff = get_height(root.left) - get_height(root.right)
	diff = diff * -1 if diff < 0

	if diff > 0
	  return false
	else
	  return is_balanced(root.left) && is_balanced(root.right)
	end

end


def check_height(root)
  if root.nil?
	  return 0
	end

	l = check_height(root.left)
	if l == -1
	  return -1
  end

	r = check_height(root.right)
	return -1 if r == -1

	diff = l - r
	diff = diff * -1 if diff < 0
	return -1 if diff > 1
	return l >= r ? l + 1 : r + 1
end

def is_balanced2(root)
  if check_height(root) == -1
	  return false
	else
	  return true
	end
end


