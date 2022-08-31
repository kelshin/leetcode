//
//  removeDuplicates.swift
//  Swift-AGDS
//
//  Created by Kelbin David on 2022-08-18.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
  guard !nums.isEmpty || nums.count != 1 else { return nums.count }
  var currentNum = nums.removeFirst()
  var newNums : [Int] = []
  newNums.append(currentNum)
  for i in nums {
    if i != currentNum {
      print("eme \(i)")
      newNums.append(i)
      currentNum = i
    }
  }
  print(newNums)
  return newNums.count
}



//      while true {
//        if i + 1 < nums.count && nums[i + 1] == nums[i] {
//            nums.remove(at: i + 1)
//        } else if i > nums.count {
//          break
//        } else {
//            i += 1
//          }
//      }
//return nums.count
