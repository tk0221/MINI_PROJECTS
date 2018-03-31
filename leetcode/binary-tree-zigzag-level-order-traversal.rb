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
    res, h = [], {}
    helper(root, h)
    
    h.each {|k, v| res << v}
    return res
end

def helper(root, h, level = 0)
    return if root.nil?
    
    if level.even?
        if h[level].nil?
            h[level] = [root.val]
        else
            h[level] << root.val
        end
    else
        if h[level].nil?
            h[level] = [root.val]
        else
            h[level] = [root.val] +h[level]
        end
    end
    helper(root.left, h, level + 1)
    helper(root.right, h, level + 1)
end
