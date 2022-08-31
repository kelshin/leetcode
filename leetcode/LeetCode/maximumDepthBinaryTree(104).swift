//
//  maximumDepthBinaryTree(104).swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-30.
//

import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
 
  return maxDepthHelper(root, 0)
}

func maxDepthHelper(_ root: TreeNode?, _ depth: Int) -> Int {
  if root == nil { return depth }
  
  let left = maxDepthHelper(root?.left, depth + 1)
  let right = maxDepthHelper(root?.right, depth + 1)
  return left > right ? left : right
}
