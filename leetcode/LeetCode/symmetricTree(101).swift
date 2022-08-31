//
//  symmetricTree.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-29.
//

import Foundation

func isSymmetric(_ root: TreeNode?) -> Bool {
  if root == nil { return true }
  
  return isSymmetricHelper(root?.left, root?.right)
}

func isSymmetricHelper(_ rootLeft: TreeNode?, _ rootRight: TreeNode?) -> Bool {
  if rootLeft == nil && rootRight == nil { return true }
  if rootLeft == nil || rootRight == nil || rootLeft?.val != rootRight?.val { return false }
  print("left \(rootLeft?.val) right \(rootRight?.val)")
  print("passing")
  return isSymmetricHelper(rootLeft?.left, rootRight?.right) && isSymmetricHelper(rootLeft?.right, rootRight?.left)
}
