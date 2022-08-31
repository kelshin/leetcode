//
//  FindCenter.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-03-20.
//

import Foundation

func findCenter(_ edges: [[Int]]) -> Int {
  //[[1,10],[10,2],[3,10],[10,4],[10,5],[10,6],[10,7],[8,10],[9,10],[10,11],[12,10]]
  var nodesArray = [[Int]](repeating: [], count: edges.count + 2)
  var visited = [Bool](repeating: false, count: edges.count + 2)
  for i in 0..<edges.count{
//    if nodesArray[i].count > 1 {
//      return i + 1
//    }
    nodesArray[edges[i][0]].append(edges[i][1])
  }
  print(nodesArray.description)
  for i in 1..<nodesArray.count{
    visited[i] = true
    if !nodesArray[i].isEmpty && !visited[nodesArray[i][0]] {
      visited[nodesArray[i][0]] = true
    } else if !nodesArray[i].isEmpty && visited[nodesArray[i][0]] {
      return nodesArray[i][0]
    }
  }
  return 0
}
