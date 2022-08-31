//
//  GasStation.swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
    var travelFrom = 0
    var current = 0
    var tank = 0
    var nextTarget = 0
    var ans = -1
  
    for i in 0..<gas.count {
      if gas[i] >= cost[i]  && gas[i] != 0  {
        current = i
        travelFrom = i
        tank = gas[i]
        nextTarget = i + 1
        while true {
          if nextTarget > gas.count - 1 {
            nextTarget = 0
          }
            if nextTarget == travelFrom && tank >= cost[current] {
            ans = ans < nextTarget ? nextTarget : ans
            break
          }
            if tank < cost[current] {
            break
          }
          tank = (tank - cost[current]) + gas[nextTarget]
          current = nextTarget
          nextTarget += 1
        }
      }
    }
    return ans
}
