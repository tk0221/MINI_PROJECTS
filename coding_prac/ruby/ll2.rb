class LinkedListNode
	attr_accessor :val, :next
	def initialize(val = nil)
		@val = val
		@next = nil
	end
end


def remove_dup(n)
	table = Hash.new
	previous = nil

	while n != nil do
		if (table.has_key?(n.val))
			previous.next = n.next
		else
			table[n.val] = true
			previous = n
		end
		n = n.next


	end
	
end
