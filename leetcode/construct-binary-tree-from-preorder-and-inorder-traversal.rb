# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
    return if preorder.empty?
    root = TreeNode.new(preorder.shift)
    
    i = inorder.index(root.val)
    
    prelft, prergt = preorder[0...i], preorder[i..-1]
    inlft, inrgt = inorder[0...i], inorder[i+1..-1]
    
    root.left = build_tree(prelft, inlft) unless prelft.empty?
    root.right = build_tree(prergt, inrgt) unless prergt.empty?
    
    return root
end
