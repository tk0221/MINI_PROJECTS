# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
#  52 ms weird... 
def kth_smallest(root, k)
    res = []
    helper(root, res)
    return res[k-1]
end

def helper(root, res)
    return if root.nil?
    helper(root.left, res)
    res << root.val
    helper(root.right, res)
end

#it works better than I thought, but I will come back later. 
