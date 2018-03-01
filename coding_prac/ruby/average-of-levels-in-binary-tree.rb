# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Float[]}
def average_of_levels(root)
    h={}
    travel(root, h, 0)
    ans = []
    for i in 0...h.size
        ans << h[i].reduce(:+) / (h[i].size * 1.0)
    end
    return ans
end

def travel(root, hash, level)
    return if root.nil?
    hash[level] = [] if hash[level].nil?
    hash[level] << root.val
    travel(root.left, hash, level + 1)
    travel(root.right, hash, level + 1)
end

