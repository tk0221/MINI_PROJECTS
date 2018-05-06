# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    
    res = root = ListNode.new(nil)
    
    while l1 and l2
        if l1.val > l2.val
            l1, l2 = l2, l1
        end
        root.next = l1
        root = root.next
        l1 = l1.next
    end
    
    l1 = l1.nil? ? l2 : l1
    root.next = l1
    return res.next
end
