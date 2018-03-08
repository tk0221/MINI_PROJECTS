class Node
	attr_accessor :val, :next
	def initialize(val = nil)
		@val = val
		@next = nil
	end
end

def main
	puts "run ll demo"

	#insert
	root = Node.new(0)
	current = root

	for i in 0..10
		current.next = Node.new(i)
		current = current.next
	end

	#print
	print_nodes(root)
	split_list(root, 4)
end

def split_list(node, x)
	puts ""
	puts "split : #{x}"
	before_start = Node.new()
	after_start = Node.new()
	
	while node != nil
		next_node = node.next
	#	puts "#{node.val}"
		if node.val < x
			node.next = before_start
			before_start = node
		else
			node.next = after_start
			after_start = node
		end
		node = next_node
	end
	puts "first list : "
	print_nodes(before_start)
	
	puts "second list: "
	print_nodes(after_start)

	return before_start, after_start
end


def print_nodes(root)
	current = root
	while current.next != nil
		print "#{current.val}"	
		current = current.next
	end
end

 
STDOUT.sync = true

main()
