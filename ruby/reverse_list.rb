
class Node
  attr_accessor :val, :next

  def initialize(val=nil)
    @val = val
    @next = nil
  end
end

def reverseList(n)
  curr = n
  nextt = curr.next
  prev = nil
  while curr != nil do
    nextt = curr.next
    curr.next = prev
    prev = curr
    curr = nextt
    
  end

  return prev
end 
