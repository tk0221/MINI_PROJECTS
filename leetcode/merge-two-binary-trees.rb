# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
def merge_trees(t1, t2)
    return t1 if t2.nil?
    return t2 if t1.nil?
    ans = TreeNode.new(t1.val + t2.val)
    ans.left = merge_trees(t1.left, t2.left)
    ans.right = merge_trees(t1.right, t2.right)
    return ans
end
