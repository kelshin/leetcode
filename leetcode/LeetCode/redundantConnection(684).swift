//
//  redundantConnection(684).swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation


func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
  var unionTree = UF(edges.count)
  var cut = [Int]()
  for i in 0..<edges.count {
    if !unionTree.connected(edges[i][0] - 1, edges[i][1] - 1) {
      unionTree.union(edges[i][0] - 1, edges[i][1] - 1)
    }
    else {
      cut.append(edges[i][0])
      cut.append(edges[i][1])
    }
  }
  return cut
}

