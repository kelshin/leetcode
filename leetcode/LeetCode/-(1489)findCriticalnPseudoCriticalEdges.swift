//
//  FindCriticalnPseudoCriticalEdges.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-04-24.
//

import Foundation

func findCriticalAndPseudoCriticalEdges(_ n: Int, _ edges: [[Int]]) -> [[Int]] {
  var adjlist = [[(v: Int, w: Int)]](repeating: [], count: n + 1)
  for e in edges {
    adjlist[e[0] + 1].append((v: e[1] + 1, w: e[2]))
    adjlist[e[1] + 1].append((v: e[0] + 1, w: e[2]))
  }
  print(adjlist)
  let (kcost, kruskalEdges) = MyMST.MyKruskalMST(adjlist)
  let (pcost, primEdges) = MST.primMST(adjlist)
  print(kruskalEdges)
  for e in kruskalEdges {
    print(e.0 - 1, " ", e.1 - 1, "  ", e.2)
  }
  print(kcost)
  print()
  for e in primEdges {
    print(e.0 - 1, " ", e.1 - 1, "  ", e.2)
  }
  print(pcost)
  return [[]]
}
