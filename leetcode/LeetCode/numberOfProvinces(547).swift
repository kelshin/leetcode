//
//  FindCircleNum.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-03-20.
//

import Foundation

func findCircleNum(_ isConnected: [[Int]]) -> Int{
  //isConnected = [[1,1,0],[1,1,0],[0,0,1]]
  var visited = [Bool](repeating: false, count: isConnected[0].count)
  var count = 0
  for i in 0..<isConnected.count{
    if !visited[i] {
      count += 1
      dfs(start: i, visited: &visited)
    }
  }
  
  func dfs(start: Int, visited: inout [Bool]){
    visited[start] = true
    for v in 0..<isConnected[start].count{
      if !visited[v] && isConnected[start][v] == 1{
        dfs(start: v, visited: &visited)
      }
    }
  }
  return count
}

