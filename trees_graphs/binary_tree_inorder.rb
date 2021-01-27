# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
    arr = []
    return arr unless root
    arr += inorder_traversal(root.left) if root.left
    arr << root.val
    arr += inorder_traversal(root.right) if root.right
    arr
end
