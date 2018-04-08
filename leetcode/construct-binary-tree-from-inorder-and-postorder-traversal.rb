def build_tree(inorder, postorder)
    return if inorder.empty?
    root = TreeNode.new(postorder[-1])
    postorder = postorder[0..-2]
    ind = inorder.index(root.val)
    root.left = build_tree(inorder[0...ind], postorder[0...ind])    
    root.right = build_tree(inorder[ind+1..-1], postorder[ind..-1])
    root
end
