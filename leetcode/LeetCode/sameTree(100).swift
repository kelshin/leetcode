//
//  sameTree.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-29.
//

import Foundation

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
  if (p == nil) && (q == nil) { return true }
  if (p == nil) || (q == nil) || p?.val != q?.val { return false }
  
  return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
