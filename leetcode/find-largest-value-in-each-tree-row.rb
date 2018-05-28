# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def largest_values(root)
    return [] if root.nil?
    res = []
    stack = []
    stack << root
    
    while !stack.empty?
        tmp = []
        nodes = []
        stack.each do |node|
            tmp << node.val
            nodes << node.left if node.left
            nodes << node.right if node.right
        end
        res << tmp.max
        stack = nodes
    end
    return res
end
