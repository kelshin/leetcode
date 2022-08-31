//
//  FindJudge.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-03-20.
//

import Foundation

func myFindJudge(_ n: Int, _ trust: [[Int]]) -> Int {
  var people = [[Int]](repeating: [], count: n + 1)
  for i in 0..<trust.count {
    people[trust[i][0]].append(trust[i][0])
  }
  for i in 1..<people.count{
    if people[i].isEmpty {
      return i
    }
  }
  return -1
}

//class Solution {
//func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
//  var val = -1
//  var judge = [Bool](repeating: true, count: n + 1)
//  if trust.count == 1 {
//    return trust[0][1]
//  }
//  for i in 0..<trust.count {
//    if trust[i].count == 2 {
//      judge[trust[i][0]] = false
//    } else {
//      val = i + 1
//    }
//  }
//  return val
//}
//}
//




