class BST
    class Node
        attr_accessor :val, :left, :right
        def initialize(val)
            @val = val
            @left, @right = nil, nil
        end
    end

    #clrs 12.3    
    def self.tree_insert(root, z)
        y = nil
        x = root
        while x != nil
            y = x
            x = x.left if y && z.val < y.val
            x = x.right if y && z.val >=y.val
        end
        
        if y.nil?
            root = z
        elsif z.val < y.val
            y.left = z
        else
            y.right = z
        end
        return root
    end

    #clrs 12.3
    def self.tree_delete(root, z)
        
    end

    #my way
    def self.travel(root, h={}, l=0)
        return root if root.nil?
        
        h[l] = [] if h[l].nil?
        h[l] << root.val
        travel(root.left, h, l+1) if root.left
        travel(root.right, h, l+1) if root.right
        return h
    end

    def self.inorder_travel(root)
        return if root.nil?
        inorder_travel(root.left)
        p root.val
        inorder_travel(root.right)
    end

    def self.preorder_travel(root)
        return if root.nil?
        p root.val
        preorder_travel(root.left)
        preorder_travel(root.right)
    end

    def self.postorder_travel(root)
        return if root.nil?
        postorder_travel(root.left)
        postorder_travel(root.right)
        p root.val
    end
end

    
