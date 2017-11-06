class Node
  attr_accessor :val, :next

	def initialize(val=nil)
	  @val = val
		@next = nil
	end

end

class Q
	attr_accessor :first, :last

	def initialize		
	end

	def enqueue(node)
		if @first.nil?
		  @last = node
			@first = @last
		else
		  @last.next = node
			@last = @last.next
		end
	end

  def dequeue
		if @first != nil
		  @item = @first.val
			@first = @first.next
			return @item
		end
		return nil
	end

end

class Stack
	attr_accessor :top

	def initialize
	end

	def pop
	  if @top != nil
		  @item = @top.val
			@top = @top.next
			return @item
		end
		return nil
	end

	def push(node)
	  @t = node
		@t.next = @top
		@top = @t
	end

	def peek
	  return @top.val
	end

end
