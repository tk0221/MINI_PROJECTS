# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def zigzag_level_order(root)
    return [] unless root
    q = Queue.new
    q.enq(root)
    ans = []
    flip = false
    while !q.empty?
       row = []
        (0...q.size).each do |i|
            node = q.deq
            row << node.val
            q.enq(node.left) if node.left
            q.enq(node.right) if node.right
        end
        ans << (flip ? row.reverse : row)
        flip = !flip
    end
    ans
end
