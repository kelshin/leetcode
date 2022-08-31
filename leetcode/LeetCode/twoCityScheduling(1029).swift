//
//  twoCityScheduling.swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func twoCitySchedCost(_ costs: [[Int]]) -> Int {
    var sum = 0
    var diff = [[Int]]()
    for i in 0..<costs.count {
      diff.append([costs[i][0] - costs[i][1],i])
    }
  let sorted = diff.sorted(by: { $0[0] < $1[0]})
  for i in 0..<sorted.count {
    if i >= sorted.count / 2 {
      sum += costs[sorted[i][1]][1]
    } else {
      sum += costs[sorted[i][1]][0]
    }
  }
    return sum
}
