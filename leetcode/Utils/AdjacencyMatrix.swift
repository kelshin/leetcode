//
//  AdjacencyMatrix.swift
//  Swift-AGDS
//
//  Created by Derrick Park on 2022-03-16.
//

import Foundation

func adjacencyMatrixRepresentation() {
  let firstLine = readLine()!.split(separator: " ")
  // # of vertices
  let n = Int(firstLine[0])!
  // # of edges
  let m = Int(firstLine[1])!
  
  // n x n
  var adjMatrix = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
  
  for _ in 0..<m {
    let edge = readLine()!.split(separator: " ")
    let u = Int(edge[0])!
    let v = Int(edge[1])!
    adjMatrix[u - 1][v - 1] = 1
    adjMatrix[v - 1][u - 1] = 1  // undirected graph
  }
  
  for row in adjMatrix {
    print(row)
  }
  
}
