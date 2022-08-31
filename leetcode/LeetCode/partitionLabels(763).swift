//
//  partitionLabels.swift
//  leetcode
//
//  Created by Kelbin David on 2022-08-31.
//

import Foundation

func partitionLabels(_ s: String) -> [Int] {
 var string = s
  var trimmed = s
  var ans = [Int]()
  var chars = Set<Character>()
  var partition = [Character]()
  
  var p = -1
  while !string.isEmpty {
    partition.append(trimmed.removeFirst())
    if let last = string.lastIndex(of: partition[0]) {
      let distance = string.distance(from: string.startIndex, to: last)
      p = distance > p ? distance : p
      if p != -1 {
        for (i,_) in string.enumerated() {
          print("i: \(i) and p: \(p)")
          if i >= p {
            //p = -1
            break
          } else {
            let c = trimmed.removeFirst()
            if let newlast = string.lastIndex(of: c) {
              let z = string.distance(from: string.startIndex, to: newlast)
              p = z > p ? z : p
            }
            partition.append(c)
            chars.insert(c)
          }
        }
    }
  }
    ans.append(partition.count)
    partition = []
    p = -1
    string = trimmed
    trimmed = string
  }
  return ans
    }
