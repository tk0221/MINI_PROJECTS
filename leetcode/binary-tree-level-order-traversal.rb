# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# 44ms
# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    hash, res= {}, []
    
    helper(root, 0, hash)
    
    (0...hash.size).each do |i|
        res << hash[i]
    end
    return res
    
end

def helper(root, level, hash = {})
    return if root.nil?
    
    hash[level].nil? ? hash[level] = [root.val] : hash[level] << root.val
    
    helper(root.left, level+1, hash)
    helper(root.right, level+1, hash)
end
