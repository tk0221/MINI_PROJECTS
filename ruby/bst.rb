class BST
	class Node
		attr_reader :key, :left, :right

		def initialize(key)
			@key = key
			@left = nil
			@right = nil
		end

		def insert(key)
			if key <= @key
				@left.nil? ? @left = Node.new(key) : @left.insert(key)
			elsif key > @key
				@right.nil? ? @right = Node.new(key) : @right.insert(key)
			end
		end
	end


	def initialize
		@root = nil
	end

	def insert( key )
		if @root.nil?
			@root = Node.new(key)
		else
			@root.insert(key)
		end
	end

	def in_order(node=@root, &block)
	  return if node.nil?
		in_order(node.left, &block)
		yield node
		in_order(node.right, &block)
	end

	def pre_order(node=@root, &block)
    return if node.nil?
		yield node
		in_order(node.left, &block)
	  in_order(node.right, &block)
	end

	def post_order(node=@root, &block)
		return if node.nil?
		in_order(node.left, &block)
		in_order(node.right, &block)
		yield node
	end

end
