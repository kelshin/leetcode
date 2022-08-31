//
//  binaryTreeInorderTraversal.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-29.
//

import Foundation

public class BinaryTreeNode {
     public var val: Int
     public var left: BinaryTreeNode?
     public var right: BinaryTreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: BinaryTreeNode?, _ right: BinaryTreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
}

func inorderTraversal(_ root: BinaryTreeNode?) -> [Int] {
  guard root != nil else { return [] }
  var inOrder : [Int] = []
  inOrderHelper(inOrder: &inOrder, root)
  return inOrder
    }

func inOrderHelper( inOrder : inout [Int], _ root : BinaryTreeNode? ){
  guard root != nil else { return }
  inOrderHelper(inOrder: &inOrder, root?.left)
  if root!.val > 0 { inOrder.append(root!.val) }
  inOrderHelper(inOrder: &inOrder, root?.right)
}


