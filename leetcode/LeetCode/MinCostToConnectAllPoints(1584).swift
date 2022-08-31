//
//  MinCostToConnectAllPoints.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-04-24.
//

import Foundation

func minCostConnectPoints(_ points: [[Int]]) -> Int {
  // add all connections and let MST cut the minimum cost
  var adjlst = [[(v: Int, w: Int)]](repeating: [], count: points.count + 1)
    for i in 0..<points.count - 1 {
      for e in i + 1..<points.count  {
        let xVal = points[i][0] > points[e][0] ? points[i][0] - points[e][0] : points[e][0] - points[i][0]
        let yVal = points[i][1] > points[e][1] ? points[i][1] - points[e][1] : points[e][1] - points[i][1]
        let weight = xVal + yVal
        adjlst[i + 1].append((v: e + 1, w: weight))
        adjlst[e + 1].append((v: i + 1, w: weight))
      }
    }
  let (cost, _) = MyMST.MyKruskalMST(adjlst)
  return cost
}
