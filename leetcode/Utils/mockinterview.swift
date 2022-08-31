//
//// Leetcode 104
//// Given the root of a binary tree, return its maximum depth.
//// A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
//
///**
// * Definition for a binary tree node.
// * public class TreeNode {
// *     public var val: Int
// *     public var left: TreeNode?
// *     public var right: TreeNode?
// *     public init() { self.val = 0; self.left = nil; self.right = nil; }
// *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
// *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
// *         self.val = val
// *         self.left = left
// *         self.right = right
// *     }
// * }
// */
//
//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init() { self.val = 0; self.left = nil; self.right = nil; }
//    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}
//
//// Given a binary tree, determine if it is height-balanced.
//// a binary tree in which the left and right subtrees of every node differ in height by no more than 1
//root = [3,9,20,null,null,15,7]
//true
//
//Input: root = [1,2,2,3,3,null,null,4,4]
//Output: false
//func maxDepth(_ root: TreeNode?) -> Int {
//    if root == nil {
//      return 0
//    }
//    return 1 + max(maxDepth(root.left), maxDepth(root.right))
//}
//
//func isBalanced(_ root: TreeNode?) -> Bool {
//    var treeRoot = root
//    if treeRoot == nil {
//      return true
//    }
//    var leftMaxDepth = maxDepth(treeRoot.left)
//    var rightMaxDepth = maxDepth(treeRoot.right)
//    if (leftMaxDepth - rightMaxDepth) > 1 {
//      return false
//    } else {
//      return isBalanced(treeRoot.left) && isBalanced(treeRoot.right)
//    }
//}
//
//// Given the root of a binary tree and an integer targetSum, return true if the tree has a root-to-leaf path such that adding up all the values along the path equals targetSum.
//// A leaf is a node with no children.
//
//
//func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
//  if root == nil { return false }
//  
//  // leaf node
//  if root.left == nil && root.right == nil {
//    return targetSum == root.val
//  }
//  
//  // recursive case
//  return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val) ||
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
