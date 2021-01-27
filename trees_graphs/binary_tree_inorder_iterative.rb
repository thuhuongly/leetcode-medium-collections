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
    stack = []
    curr = root
    result = []
    while curr || stack.length > 0 do
        while curr do
            stack.push(curr)
            curr = curr.left
        end
        curr = stack.pop
        result << curr.val
        curr = curr.right
    end
    result
end
